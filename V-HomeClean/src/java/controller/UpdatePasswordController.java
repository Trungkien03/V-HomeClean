/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DTO.AccountDTO;
import DTO.UserError;
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
 * @author Asus
 */
@WebServlet(name = "UpdatePasswordController", urlPatterns = {"/UpdatePasswordController"})
public class UpdatePasswordController extends HttpServlet {

    private static final String ERROR = "404.jsp";
    private static final String SUCCESS = "login.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = ERROR;
        try {
            String password = request.getParameter("password");
            String confirm = request.getParameter("confirm");
            AccountDAO dao = new AccountDAO();
            HttpSession session = request.getSession();

            AccountDTO account = (AccountDTO) session.getAttribute("Account");
            if (password.equals(confirm)) {
                account.setPassword(password);
                session.setAttribute("Account", account);
                boolean checkUpdate = dao.updateAccount(account);

                if (checkUpdate) {
                    request.setAttribute("message", "Cập nhật mật khẩu thành công!");
                    url = SUCCESS;
                } else {
                    request.setAttribute("ERROR", "Cập nhật thất bại! ");

                }
            } else {
                request.setAttribute("ERROR", " Mật khẩu và xác nhận mật khẩu "
                        + "không trùng khớp! ");
                request.getRequestDispatcher("resetPassword.jsp").forward(request, response);
            }

        } catch (Exception e) {
            log("Error at UpdatePasswordController: " + e.toString());
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
