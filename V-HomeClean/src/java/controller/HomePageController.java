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
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.FeedBackDTO;
import DTO.NotificationDTO;
import DTO.ServiceDTO;
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
@WebServlet(name = "HomePageController", urlPatterns = {"/HomePageController"})
public class HomePageController extends HttpServlet {

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
        NotificationDAO nDao = new NotificationDAO();
        AccountDAO aDao = new AccountDAO();
        BookingDAO bDao = new BookingDAO();
        FeedBackDAO fDao = new FeedBackDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        if (a != null) {
            String typeNotiUser = "User";
            String typeNotiStaff = "Staff";
            List<AccountDTO> listAllAccounts = aDao.getAllAccounts(); // lấy danh sách này để phụ trợ cho việc hiển thị thông báo (Notification)
            session.setAttribute("listAllAccounts", listAllAccounts);
            List<NotificationDTO> listNotiUnread = nDao.getAllNotiByAccountIDAndStatusAndTypeNoti(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
            session.setAttribute("listNotiUnread", listNotiUnread);
            int totalUnreadNoti = nDao.CountUnreadNotificationAndTypeNotiAndAccountID(a.getAccountID(),"false", typeNotiUser, typeNotiStaff);
            session.setAttribute("totalUnreadNoti", totalUnreadNoti);
            List<BookingDTO> ListBookingAccounts = bDao.getBookingDetailByAccountID(a.getAccountID());
            session.setAttribute("ListBookingAccounts", ListBookingAccounts);
        }
        int roleIDFixElec = 2;
        int roleIDFixWater = 5;
        int roleIDClean = 6;
        ServiceDAO dao = new ServiceDAO();
        List<ServiceDTO> list = dao.getAllService();
        List<AccountDTO> ListStaffsFixEletric = aDao.GetAccountByRoleIDAndStatus(roleIDFixElec, "true");
        List<AccountDTO> ListStaffsFixWater = aDao.GetAccountByRoleIDAndStatus(roleIDFixWater, "true");
        List<AccountDTO> ListstaffsClean = aDao.GetAccountByRoleIDAndStatus(roleIDClean, "true");
        List<AccountDTO> ListStaffs = new ArrayList<>();
        ListStaffs.addAll(ListStaffsFixEletric);
        ListStaffs.addAll(ListStaffsFixWater);
        ListStaffs.addAll(ListstaffsClean);
        
        List<FeedBackDTO> listF = fDao.getAllFeedBack();
        int totalUser = aDao.CountAccountByRoleID(4);
        int totalBookingDone = bDao.CountTotalBookingExceptStatus("Hủy");
        request.setAttribute("totalUser", totalUser);
        request.setAttribute("totalBookingDone", totalBookingDone);
        request.setAttribute("ListA", ListstaffsClean);
        request.setAttribute("listS", list);
        request.setAttribute("ListF", listF);
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
