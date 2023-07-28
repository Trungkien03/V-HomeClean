/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DAO.FeedBackDAO;
import DAO.NotificationDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.FeedBackDTO;
import DTO.NotificationDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Trung Kien
 */
@WebServlet(name = "StaffTaskPageController", urlPatterns = {"/StaffTaskPageController"})
public class StaffTaskPageController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        AccountDAO aDao = new AccountDAO();
        BookingDAO bDao = new BookingDAO();
        FeedBackDAO fDao = new FeedBackDAO();
        NotificationDAO nDao = new NotificationDAO();
        String action = request.getParameter("action");
        String url = "taskStaffsPage.jsp";
        String typeNotiUser = "User"; //xác nhận kiểu noti sẽ được gửi tới khách hàng
        String typeNotiStaff = "Staff"; //xác nhận kiểu noti sẽ được gửi tới nhân viên
        String typeNotiAdmin = "Admin";
        if (a == null) {
            response.sendRedirect("login.jsp");
        } else {
            if (a != null) {
                List<AccountDTO> listAllAccounts = aDao.getAllAccounts(); // lấy danh sách này để phụ trợ cho việc hiển thị thông báo (Notification)
                session.setAttribute("listAllAccounts", listAllAccounts);
                List<NotificationDTO> listNotiUnread = nDao.getAllNotiByAccountIDAndStatusAndTypeNoti(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
                session.setAttribute("listNotiUnread", listNotiUnread);
                int totalUnreadNoti = nDao.CountUnreadNotificationAndTypeNotiAndAccountID(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
                session.setAttribute("totalUnreadNoti", totalUnreadNoti);
                List<BookingDTO> ListBookingAccounts = bDao.getBookingDetailByAccountID(a.getAccountID());
                session.setAttribute("ListBookingAccounts", ListBookingAccounts);
            }
            try {
                if (action.equalsIgnoreCase("Xác nhận")) {
                    String bookingIDString = request.getParameter("bookingID");
                    BookingDTO userBooking = bDao.getBookingByID(bookingIDString);
                    AccountDTO staff = aDao.GetAccountByAccountID(userBooking.getStaffID());
                    int bookingID = 0;
                    boolean check = false;
                    if (bookingIDString != null) {
                        bookingID = Integer.parseInt(bookingIDString);
                    }
                    if (bookingID != 0) {
                        String bookingStatus = "Đang thực hiện";
                        bDao.updateBookingWithBookingIdAndStatus(bookingID, bookingStatus);
                        request.setAttribute("message", "Bắt đầu thực hiện đơn hàng");
                        check = true;
                    }
                    if (check == true) {
                        String notiDetail = "Nhân viên " + staff.getFullName() + " đã xác nhận đơn của bạn và bắt đầu thực hiện.";
                        nDao.InsertNotification(userBooking.getAccountID(), userBooking.getBookingID(), notiDetail, "false", typeNotiUser);
                    }
                }

                if (action.equalsIgnoreCase("Hoàn thành")) {
                    String bookingIDString = request.getParameter("bookingID");
                    BookingDTO userBooking = bDao.getBookingByID(bookingIDString);
                    AccountDTO staff = aDao.GetAccountByAccountID(userBooking.getStaffID());
                    int bookingID = 0;
                    boolean check = false;
                    if (bookingIDString != null) {
                        bookingID = Integer.parseInt(bookingIDString);
                    }
                    if (bookingID != 0) {
                        String bookingStatus = "Xác nhận hoàn thành";
                        bDao.updateBookingWithBookingIdAndStatus(bookingID, bookingStatus);
                        double getUpdateSalary = aDao.getSalaryWithAccountID(staff.getAccountID());
                        double updateSalary = (userBooking.getTotalPrice() * 70) / 100;
                        double totalUpdate = getUpdateSalary + updateSalary; // cập nhật lại lương nhân viên khi mới làm xong
                        aDao.updateSalaryWithAccountID(staff.getAccountID(), totalUpdate);
                        request.setAttribute("message", "Xác nhận hoàn thành đơn thành công");
                        check = true;
                    }
                    if (check == true) {
                        String notiDetail = "Nhân viên " + staff.getFullName() + " đã xác nhận hoàn thành đơn, quý khách vui lòng xác nhận đơn.";
                        nDao.InsertNotification(userBooking.getAccountID(), userBooking.getBookingID(), notiDetail, "false", typeNotiUser);
                        if (userBooking.getTypeOfService().equalsIgnoreCase("Định kì theo tuần")) {
                            String accountID = userBooking.getAccountID();
                            AccountDTO accountBooking = aDao.GetAccountByAccountID(accountID);
                            String status = "Chờ xác nhận";
                            String staffID = "";
                            String serviceID = userBooking.getServiceID();
                            int totalPrice = userBooking.getTotalPrice();
                            String bookingDateString = userBooking.getBookingDate();
                            String bookingAddress = userBooking.getBookingAddress();
                            String typeOfService = userBooking.getTypeOfService();
                            String message = "";
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            try {
                                // Chuyển đổi String thành Date
                                Date bookingDate = sdf.parse(bookingDateString);

                                // Tạo đối tượng Calendar và đặt thời gian của nó là bookingDate
                                Calendar calendar = Calendar.getInstance();
                                calendar.setTime(bookingDate);

                                // Thêm 1 tuần (7 ngày) vào thời gian hiện tại
                                calendar.add(Calendar.WEEK_OF_YEAR, 1);

                                // Lấy thời gian 1 tuần sau
                                Date oneWeekLater = calendar.getTime();

                                // Chuyển đổi thời gian 1 tuần sau thành String để hiển thị
                                String oneWeekLaterString = sdf.format(oneWeekLater);

                                int bookingIDNumber = bDao.InsertBooking(accountID, status, staffID, serviceID, totalPrice, oneWeekLaterString, bookingAddress, typeOfService, message);
                                String detailNotificationForAdmin = "Một đơn dịch vụ của khách hàng " + accountBooking.getFullName() + " vừa được mới được tạo, thực hiện vào thời gian " + oneWeekLaterString;
                                String detailNotificationForUser = "Đơn dịch vụ mới được khởi tạo, thực hiện vào ngày " + oneWeekLaterString;
                                nDao.InsertNotification(accountBooking.getAccountID(), bookingIDString, detailNotificationForAdmin, "false", typeNotiAdmin);
                                nDao.InsertNotification(accountBooking.getAccountID(), bookingIDString, detailNotificationForUser, "false", typeNotiUser);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        }
                        if (userBooking.getTypeOfService().equalsIgnoreCase("Định kì theo tháng")) {
                            String accountID = userBooking.getAccountID();
                            String status = "Chờ xác nhận";
                            String staffID = "";
                            String serviceID = userBooking.getServiceID();
                            int totalPrice = userBooking.getTotalPrice();
                            String bookingDateString = userBooking.getBookingDate();
                            String bookingAddress = userBooking.getBookingAddress();
                            String typeOfService = userBooking.getTypeOfService();
                            String message = "";
                            AccountDTO accountBooking = aDao.GetAccountByAccountID(accountID);
                            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                            try {
                                // Chuyển đổi String thành Date
                                Date bookingDate = sdf.parse(bookingDateString);

                                // Tạo đối tượng Calendar và đặt thời gian của nó là bookingDate
                                Calendar calendar = Calendar.getInstance();
                                calendar.setTime(bookingDate);

                                // Thêm 1 tháng vào thời gian hiện tại
                                calendar.add(Calendar.MONTH, 1);

                                // Lấy thời gian 1 tháng sau
                                Date oneMonthLater = calendar.getTime();

                                // Chuyển đổi thời gian 1 tháng sau thành String để hiển thị
                                String oneMonthLaterString = sdf.format(oneMonthLater);

                                int bookingIDNumber = bDao.InsertBooking(accountID, status, staffID, serviceID, totalPrice, oneMonthLaterString, bookingAddress, typeOfService, message);
                                String detailNotificationForAdmin = "Một đơn dịch vụ của khách hàng " + accountBooking.getFullName() + " vừa được mới được tạo, thực hiện vào thời gian " + oneMonthLaterString;
                                String detailNotificationForUser = "Đơn dịch vụ mới được khởi tạo, thực hiện vào ngày " + oneMonthLaterString;
                                nDao.InsertNotification(accountBooking.getAccountID(), bookingIDString, detailNotificationForAdmin, "false", typeNotiAdmin);
                                nDao.InsertNotification(accountBooking.getAccountID(), bookingIDString, detailNotificationForUser, "false", typeNotiUser);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                String accountID = a.getAccountID();
                List<FeedBackDTO> feedBackList = fDao.getListFeedBack();
                List<BookingDTO> TaskList = bDao.getBookingDetailByStaffID(accountID);
                List<AccountDTO> allAccounts = aDao.getAllAccounts();
                List<NotificationDTO> listNoti = nDao.getAllNotiByAccountID(accountID);
                request.setAttribute("feedBackList", feedBackList);
                request.setAttribute("listNoti", listNoti);
                request.setAttribute("allAccounts", allAccounts);
                request.setAttribute("TaskList", TaskList);
                request.getRequestDispatcher(url).forward(request, response);
            }
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
