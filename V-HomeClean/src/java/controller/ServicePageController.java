/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DAO.CategorySDAO;
import DAO.NotificationDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.CategoryServiceDTO;
import DTO.NotificationDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
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
@WebServlet(name = "ServicePageController", urlPatterns = {"/ServicePageController"})
public class ServicePageController extends HttpServlet {

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
        ServiceDAO dao = new ServiceDAO();
        HttpSession session = request.getSession();
        NotificationDAO nDao = new NotificationDAO();
        AccountDAO aDao = new AccountDAO();
        BookingDAO bDao = new BookingDAO();
        CategorySDAO cDao = new CategorySDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        if (a != null) {
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
        }
        List<ServiceDTO> list = dao.getAllService();
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        if (indexPage.equals("-1")) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        int count = dao.CountService();
        int endPage = count / 6;
        if (endPage % 6 != 0) {
            endPage++;
        }

        list = dao.pagingService(index);
        List<CategoryServiceDTO> listCS = cDao.getAllCategory();
        session.setAttribute("listCS", listCS);
        request.setAttribute("listS", list);
        request.setAttribute("endP", endPage);
        request.setAttribute("tag", index);
        request.getRequestDispatcher("service.jsp").forward(request, response);
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
