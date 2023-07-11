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
import java.io.IOException;
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
                        request.setAttribute("message", "Không tìm thấy ID của booking");
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
                        aDao.updateSalaryWithAccountID(staff.getAccountID(), getUpdateSalary);
                        request.setAttribute("message", "Không tìm thấy ID của booking");
                        check = true;
                    }
                    if (check == true) {
                        String notiDetail = "Nhân viên " + staff.getFullName() + " đã xác nhận hoàn thành đơn, quý khách vui lòng xác nhận đơn.";
                        nDao.InsertNotification(userBooking.getAccountID(), userBooking.getBookingID(), notiDetail, "false", typeNotiUser);
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
