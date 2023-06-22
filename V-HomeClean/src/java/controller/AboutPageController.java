/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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

/**
 *
 * @author Trung Kien
 */
@WebServlet(name = "AboutPageController", urlPatterns = {"/AboutPageController"})
public class AboutPageController extends HttpServlet {

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
        int roleIDFixElec = 2;
        int roleIDFixWater = 5;
        int roleIDClean = 6;
        AccountDAO aDao = new AccountDAO();
        List<AccountDTO> ListStaffsFixEletric = aDao.GetAccountByRoleIDAndStatus(roleIDFixElec, "true");
        List<AccountDTO> ListStaffsFixWater = aDao.GetAccountByRoleIDAndStatus(roleIDFixWater, "true");
        List<AccountDTO> ListstaffsClean = aDao.GetAccountByRoleIDAndStatus(roleIDClean, "true");
        List<AccountDTO> ListStaffs = new ArrayList<>();
        ListStaffs.addAll(ListStaffsFixEletric);
        ListStaffs.addAll(ListStaffsFixWater);
        ListStaffs.addAll(ListstaffsClean);
        request.setAttribute("ListA", ListstaffsClean);
        request.getRequestDispatcher("about.jsp").forward(request, response);
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
