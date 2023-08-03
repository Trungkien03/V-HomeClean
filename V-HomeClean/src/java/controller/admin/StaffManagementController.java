/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DTO.AccountDTO;
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
@WebServlet(name = "StaffManagementController", urlPatterns = {"/StaffManagementController"})
public class StaffManagementController extends HttpServlet {

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
        int roleIDFixElec = 2;
        int roleIDFixWater = 5;
        int roleIDClean = 6;
        String action = request.getParameter("action");
        AccountDAO aDao = new AccountDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                if (action.equalsIgnoreCase("Khóa")) {
                    String accountID = request.getParameter("accountID");
                    aDao.setStatusAccount(accountID, "false");
                }

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                List<AccountDTO> ListStaffsFixEletric = aDao.GetAccountByRoleIDAndStatus(roleIDFixElec, "true");
                List<AccountDTO> ListStaffsFixWater = aDao.GetAccountByRoleIDAndStatus(roleIDFixWater, "true");
                List<AccountDTO> ListstaffsClean = aDao.GetAccountByRoleIDAndStatus(roleIDClean, "true");
                List<AccountDTO> ListStaffs = new ArrayList<>();
                ListStaffs.addAll(ListStaffsFixEletric);
                ListStaffs.addAll(ListStaffsFixWater);
                ListStaffs.addAll(ListstaffsClean);
                for (AccountDTO staff : ListStaffs) {
                    double getUpdateSalary = aDao.getSalaryWithAccountID(staff.getAccountID());
                    aDao.updateSalaryWithAccountID(staff.getAccountID(), getUpdateSalary);
                }
                int TotalStaffsFixElectric = aDao.CountAccountByRoldIDandStatus(roleIDFixElec, "true");
                int TotalStaffsFixWater = aDao.CountAccountByRoldIDandStatus(roleIDFixWater, "true");
                int TotalStaffsClean = aDao.CountAccountByRoldIDandStatus(roleIDClean, "true");
                int TotalStaffsActive = TotalStaffsFixElectric + TotalStaffsFixWater + TotalStaffsClean;
                request.setAttribute("ListStaffs", ListStaffs);
                request.setAttribute("TotalStaffsActive", TotalStaffsActive);
                request.getRequestDispatcher("/dashboard/staffs.jsp").forward(request, response);
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
