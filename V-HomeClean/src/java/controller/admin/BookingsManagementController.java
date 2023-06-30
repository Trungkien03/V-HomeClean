/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
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
@WebServlet(name = "BookingsManagementController", urlPatterns = {"/BookingsManagementController"})
public class BookingsManagementController extends HttpServlet {

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
        AccountDAO aDao = new AccountDAO();
        int roleIDFixElec = 2;
        int roleIDFixWater = 5;
        int roleIDClean = 6;
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                // action here
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                List<AccountDTO> ListStaffsFixEletric = aDao.GetAccountByRoleIDAndStatus(roleIDFixElec, "true"); // lấy ra những staff sửa chữa điện
                List<AccountDTO> ListStaffsFixWater = aDao.GetAccountByRoleIDAndStatus(roleIDFixWater, "true"); // lấy ra những staff sửa chữa nước
                List<AccountDTO> ListstaffsClean = aDao.GetAccountByRoleIDAndStatus(roleIDClean, "true"); // lấy ra những staff vệ sinh
                List<AccountDTO> ListStaffs = new ArrayList<>();
                ListStaffs.addAll(ListStaffsFixEletric);
                ListStaffs.addAll(ListStaffsFixWater);
                ListStaffs.addAll(ListstaffsClean);
                List<AccountDTO> AccountsList = aDao.getAllAccounts(); // lấy ra những accounts
                List<BookingDTO> bookingsList = bDao.getAllLatestBookings(); // lấy ra những booking gần nhất
                int totalActiveBookings = bDao.CountTotalBookingExceptStatus("hủy"); // count tất cả những booking đang trong thời gian hoạt động hoặc chờ được xử lý
                request.setAttribute("AccountsList", AccountsList);
                request.setAttribute("bookingsList", bookingsList);
                request.setAttribute("StaffList", ListStaffs);
                request.setAttribute("totalActiveBookings", totalActiveBookings);
                request.getRequestDispatcher("/dashboard/bookings.jsp").forward(request, response);
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
