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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Hieu Doan
 */
@WebServlet(name = "ChangePassword", urlPatterns = {"/ChangePassword"})
public class ChangePassword extends HttpServlet {

    private static final String ERROR = "404.jsp";
    private static final String SUCCESS = "userProfile.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        try {
            String password = request.getParameter("password");
            String newPassword = request.getParameter("newPassword");
            String confirm = request.getParameter("confirm");
            AccountDAO dao = new AccountDAO();
            HttpSession session = request.getSession();
            AccountDTO account = (AccountDTO) session.getAttribute("acc");
            if (password.equals(account.getPassword())) {
                if (newPassword.equals(confirm)) {
                    account.setPassword(newPassword);
                    session.setAttribute("acc", account);
                    boolean checkUpdate = dao.updateAccount(account);
                    if (checkUpdate) {
                        request.setAttribute("message", "Cập nhật mật khẩu thành công!");
                        url = SUCCESS;
                    }
                } else {

                    request.setAttribute("ERROR", " Mật khẩu và xác nhận mật khẩu "
                            + "không trùng khớp! ");
                    request.getRequestDispatcher("userProfile.jsp").forward(request, response);

                }
            } else {

                request.setAttribute("ERROR", " Mật khẩu cũ không trùng khớp! ");
                request.getRequestDispatcher("userProfile.jsp").forward(request, response);
            }

        } catch (Exception e) {
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
