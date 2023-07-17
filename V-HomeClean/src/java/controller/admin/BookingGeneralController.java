/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DAO.FeedBackDAO;
import DAO.NotificationDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.FeedBackDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "BookingGeneralController", urlPatterns = {"/BookingGeneralController"})
public class BookingGeneralController extends HttpServlet {

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
        String action = request.getParameter("action");
        BookingDAO bDao = new BookingDAO();
        ServiceDAO sDao = new ServiceDAO();
        AccountDAO aDao = new AccountDAO();
        FeedBackDAO fDao = new FeedBackDAO();
        NotificationDAO nDao = new NotificationDAO();
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                if (action == null || action.isEmpty()) {

                    String bookingID = request.getParameter("bookingID");
                    BookingDTO booking = bDao.getBookingByID(bookingID);
                    ServiceDTO service = sDao.getServiceByID(booking.getServiceID());
                    AccountDTO account = aDao.GetAccountByAccountID(booking.getAccountID());
                    AccountDTO staff = aDao.GetAccountByAccountID(booking.getStaffID());
                    List<AccountDTO> listAccounts = aDao.getAllAccounts();
                    int roleIDFixElec = 2;
                    int roleIDFixWater = 5;
                    int roleIDClean = 6;
                    List<AccountDTO> ListStaffsFixEletric = aDao.getAvailableStaffByRoleID(roleIDFixElec);
                    List<AccountDTO> ListStaffsFixWater = aDao.getAvailableStaffByRoleID(roleIDFixWater);
                    List<AccountDTO> ListstaffsClean = aDao.getAvailableStaffByRoleID(roleIDClean);

                    List<FeedBackDTO> feedBackList = fDao.getListFeedBack();
                    List<BookingDTO> BookingList = bDao.getAllLatestBookings();
                    request.setAttribute("feedBackList", feedBackList);
                    request.setAttribute("ListB", BookingList);
                    request.setAttribute("listAccounts", listAccounts);
                    request.setAttribute("ListStaffsFixEletric", ListStaffsFixEletric);
                    request.setAttribute("ListStaffsFixWater", ListStaffsFixWater);
                    request.setAttribute("ListstaffsClean", ListstaffsClean);
                    request.setAttribute("booking", booking);
                    request.setAttribute("service", service);
                    request.setAttribute("account", account);
                    request.setAttribute("staff", staff);
                }

                if (action.equalsIgnoreCase("Cập Nhật")) {
                    try {

                        String bookingIDString = request.getParameter("bookingID");
                        int bookingID = Integer.parseInt(bookingIDString);
                        String staffID = request.getParameter("staffID");
                        bDao.updateBookingWithStaffIDandStatus(staffID, "Xác nhận", bookingID);
                        BookingDTO booking = bDao.getBookingByID(bookingIDString);
                        ServiceDTO service = sDao.getServiceByID(booking.getServiceID());
                        AccountDTO account = aDao.GetAccountByAccountID(booking.getAccountID());
                        AccountDTO staff = aDao.GetAccountByAccountID(booking.getStaffID());

                        String notiDetails = "Nhân viên " + staff.getFullName() + " sẽ đảm nhận cho dịch vụ " + service.getServiceName() + " của bạn vào thời gian " + booking.getBookingDate();
                        String typeNotiUser = "User"; //để định dạng thông báo này sẽ được gửi tới user
                        nDao.InsertNotification(account.getAccountID(), bookingIDString, notiDetails, "false", typeNotiUser);

                        String notiDetailsStaff = "Bạn vừa được giao một đơn dịch vụ mới từ Quản lý " + a.getFullName() + " với mã hàng hóa là " + bookingID;
                        String typeNotiStaff = "Staff";
                        nDao.InsertNotification(staff.getAccountID(), bookingIDString, notiDetailsStaff, "false", typeNotiStaff);
                        int roleIDFixElec = 2;
                        int roleIDFixWater = 5;
                        int roleIDClean = 6;
                        List<AccountDTO> ListStaffsFixEletric = aDao.getAvailableStaffByRoleID(roleIDFixElec);
                        List<AccountDTO> ListStaffsFixWater = aDao.getAvailableStaffByRoleID(roleIDFixWater);
                        List<AccountDTO> ListstaffsClean = aDao.getAvailableStaffByRoleID(roleIDClean);
                        List<AccountDTO> listAccounts = aDao.getAllAccounts();
                        request.setAttribute("listAccounts", listAccounts);
                        request.setAttribute("ListStaffsFixEletric", ListStaffsFixEletric);
                        request.setAttribute("ListStaffsFixWater", ListStaffsFixWater);
                        request.setAttribute("ListstaffsClean", ListstaffsClean);
                        request.setAttribute("booking", booking);
                        request.setAttribute("service", service);
                        request.setAttribute("account", account);
                        request.setAttribute("staff", staff);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }

                }
                if (action.equalsIgnoreCase("Hủy")) {
                    String bookingIDString = request.getParameter("bookingID");
                    int bookingID = Integer.parseInt(bookingIDString);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                request.getRequestDispatcher("/dashboard/general-booking.jsp").forward(request, response);
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
