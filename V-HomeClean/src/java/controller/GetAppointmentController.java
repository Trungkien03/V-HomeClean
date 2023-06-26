/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DAO.NotificationDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.NotificationDTO;
import DTO.ServiceDTO;
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
 * @author Asus
 */
@WebServlet(name = "GetAppointmentController", urlPatterns = {"/GetAppointmentController"})
public class GetAppointmentController extends HttpServlet {

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
        if (a == null) {
            request.setAttribute("ERROR", "Bạn cần đăng nhập tài khoản để đặt lịch!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            NotificationDAO nDao = new NotificationDAO();
            AccountDAO aDao = new AccountDAO();
            BookingDAO bDao = new BookingDAO();
            String typeNotiUser = "User";
            String typeNotiStaff = "Staff";
            List<AccountDTO> listAllAccounts = aDao.getAllAccounts(); // lấy danh sách này để phụ trợ cho việc hiển thị thông báo (Notification)
            session.setAttribute("listAllAccounts", listAllAccounts);
            List<NotificationDTO> listNotiUnread = nDao.getAllNotiByAccountIDAndStatusAndTypeNoti(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
            session.setAttribute("listNotiUnread", listNotiUnread);
            int totalUnreadNoti = nDao.CountUnreadNotificationAndTypeNotiAndAccountID(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
            session.setAttribute("totalUnreadNoti", totalUnreadNoti);
            List<BookingDTO> ListBookingAccounts = bDao.getBookingDetailByAccountID(a.getAccountID());
            session.setAttribute("ListBookingAccounts", ListBookingAccounts);

            String serviceID = request.getParameter("serviceID");
            ServiceDAO dao = new ServiceDAO();
            List<ServiceDTO> list = dao.getAllService();
            ServiceDTO s = dao.getServiceByID(serviceID);
            request.setAttribute("listS", list);
            request.setAttribute("ServiceDetail", s);
            request.getRequestDispatcher("SeviceDetails-GetAppointment.jsp").forward(request, response);
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
