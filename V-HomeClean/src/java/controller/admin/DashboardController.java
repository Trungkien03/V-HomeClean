/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DAO.BlogDAO;
import DAO.BookingDAO;
import DAO.NotificationDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.NotificationDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "DashboardController", urlPatterns = {"/DashboardController"})
public class DashboardController extends HttpServlet {

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
        int UserID = 4;
        int roleIDFixElec = 2;
        int roleIDFixWater = 5;
        int roleIDClean = 6;

        AccountDAO aDao = new AccountDAO();
        ServiceDAO sDao = new ServiceDAO();
        BookingDAO bDao = new BookingDAO();
        NotificationDAO nDao = new NotificationDAO();
        int TotalUsers = aDao.CountAccountByRoleID(UserID);
        int TotalServices = sDao.CountService();
        List<AccountDTO> listUsers = aDao.GetAccountsByRoleID(UserID);
        request.setAttribute("TotalUsers", TotalUsers);
        request.setAttribute("TotalServices", TotalServices);
        //tổng số đơn ở đây
        BookingDAO bookingDao = new BookingDAO();
        int totalBookings = bookingDao.countTotalBooking();
        request.setAttribute("totalBookings", totalBookings);
        //tổng số blog ở đây:
        BlogDAO blogDao = new BlogDAO();
        int totalBlogs = blogDao.countBlogs();
        request.setAttribute("totalBlogs", totalBlogs);

        //lấy ra những thằng Notification
        String typeNotiAdmin = "Admin"; //lấy ra những cái nào của thằng admin cần đọc thôi
        List<NotificationDTO> listNotifications = nDao.getAllNotificationByTypeNoti(typeNotiAdmin); // lấy ra danh sách những thông báo của Admin
        session.setAttribute("listNotifications", listNotifications);
        List<AccountDTO> listAllAccounts = aDao.getAllAccounts(); // lấy danh sách này để phụ trợ cho việc hiển thị thông báo (Notification)
        session.setAttribute("listAllAccounts", listAllAccounts);
        int totalUnreadNoti = nDao.CountUnreadNotificationAndtypeNoti("false", typeNotiAdmin);
        session.setAttribute("totalUnreadNoti", totalUnreadNoti);

        request.setAttribute("ListUsers", listUsers);

        
        List<AccountDTO> AccountsList = aDao.getAllAccounts(); // lấy ra những accounts
        List<BookingDTO> bookingsList = bDao.getAllLatestBookings(); // lấy ra những booking gần nhất
        int totalActiveBookings = bDao.CountTotalBookingExceptStatus("hủy"); // count tất cả những booking đang trong thời gian hoạt động hoặc chờ được xử lý
        request.setAttribute("AccountsList", AccountsList);
        request.setAttribute("bookingsList", bookingsList);
        request.setAttribute("totalActiveBookings", totalActiveBookings);
        request.getRequestDispatcher("/dashboard/index.jsp").forward(request, response);
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
