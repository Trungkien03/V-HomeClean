/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.io.PrintWriter;
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
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else{
            try {
                if(action == null || action.isEmpty()){
                    String bookingID = request.getParameter("bookingID");
                    BookingDTO booking = bDao.getBookingByID(bookingID);
                    ServiceDTO service = sDao.getServiceByID(booking.getServiceID());
                    AccountDTO account = aDao.GetAccountByAccountID(booking.getAccountID());
                    AccountDTO staff = aDao.GetAccountByAccountID(booking.getStaffID());
                    session.setAttribute("booking", booking);
                    session.setAttribute("service", service);
                    session.setAttribute("account", account);
                    session.setAttribute("staff", staff);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally{
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