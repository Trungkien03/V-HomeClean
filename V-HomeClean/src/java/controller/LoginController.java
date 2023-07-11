/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DTO.AccountDTO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Asus
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String checkboxValue = request.getParameter("remember-me");
        AccountDAO ACdao = new AccountDAO();
        AccountDTO a = ACdao.Login(email, pass);
        
        if(a==null){
            request.setAttribute("ERROR", "Tài khoản hoặc mật khẩu không chính xác. Vui lòng kiểm tra lại!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            
        } else if(a.getStatus().equalsIgnoreCase("false")){
            request.setAttribute("ERROR", "Tài khoản của bạn đã bị khóa");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else{
            HttpSession session = request.getSession();
            session.setAttribute("acc", a);
            
            
            if (checkboxValue != null && checkboxValue.equalsIgnoreCase("on")) {
                    Cookie u = new Cookie("User", email);
                    Cookie p = new Cookie("Pass", pass);
                    u.setMaxAge(60 * 2);
                    p.setMaxAge(60 * 2);
                    response.addCookie(u);
                    response.addCookie(p);
                }
            
            
            
            request.getRequestDispatcher("HomePageController").forward(request, response);
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
