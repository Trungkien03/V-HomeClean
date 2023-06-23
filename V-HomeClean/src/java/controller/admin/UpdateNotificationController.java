/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DAO.NotificationDAO;
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.NotificationDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
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
@WebServlet(name = "UpdateNotificationController", urlPatterns = {"/UpdateNotificationController"})
public class UpdateNotificationController extends HttpServlet {

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
//        request.setCharacterEncoding("UTF-8");
//        AccountDAO aDao = new AccountDAO();
//        ServiceDAO sDao = new ServiceDAO();
//        NotificationDAO nDao = new NotificationDAO();
//        List<NotificationDTO> listNotifications = nDao.getAllNotification();
//        List<AccountDTO> listAllAccounts = aDao.getAllAccounts();
//        int totalUnreadNoti = nDao.CountUnreadNotification("false");
//
//        // Create a map to hold the notification data
//        Map<String, Object> jsonData = new HashMap<>();
//        jsonData.put("listNotifications", listNotifications);
//        jsonData.put("listAllAccounts", listAllAccounts);
//        jsonData.put("totalUnreadNoti", totalUnreadNoti);
//
//        // Convert the map to a JSON string
//        String json = new Gson().toJson(jsonData);
//
//        // Set the content type of the response
//        response.setContentType("application/json");
//
//        // Write the JSON data to the response
//        response.getWriter().write(json);
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
