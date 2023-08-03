/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asus
 */
public class MainController extends HttpServlet {

    private static final String ERROR = "404.jsp";
    private static final String LOGIN = "Đăng Nhập";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String REGISTER = "Đăng Ký";
    private static final String REGISTER_CONTROLLER = "RegisterController";
    private static final String LOGOUT = "Đăng xuất";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String FORGOT = "Lấy lại mật khẩu";
    private static final String FORGOTPASSWORD_CONTROLLER = "ForgotPasswordController";
    private static final String VALID_OTP = "Nhập OTP";
    private static final String VALID_OTP_CONTROLLER = "ValidOtpController";
    private static final String UPDATE_PASSWORD = "Cập nhật mật khẩu";
    private static final String UPDATE_PASSWORD_CONTROLLER = "UpdatePasswordController";
    private static final String BOOKING = "Booking";
    private static final String BOOKING_CONTROLLER = "BookingController";
    private static final String DISTINCT = "Distinct";
    private static final String DISTINCT_CONTROLLER = "DistinctServiceController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = ERROR;
        try {
            String action = request.getParameter("action");
            if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            } else if (REGISTER.equals(action)) {
                url = REGISTER_CONTROLLER;
            } else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;
            } else if (FORGOT.equals(action)) {
                url = FORGOTPASSWORD_CONTROLLER;
            } else if (VALID_OTP.equals(action)) {
                url = VALID_OTP_CONTROLLER;
            } else if (UPDATE_PASSWORD.equals(action)) {
                url = UPDATE_PASSWORD_CONTROLLER;
            } else if (BOOKING.equals(action)) {
                url = BOOKING_CONTROLLER;
            } else if (DISTINCT.equals(action)) {
                url = DISTINCT_CONTROLLER;
            } else {
                request.setAttribute("ERROR", "Your action is not supported!");
            }
        } catch (Exception e) {
            log("Error at: MainController" + e.toString());
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
