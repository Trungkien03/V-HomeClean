/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BookingDAO;
import DAO.ServiceDAO;
import DTO.ServiceDTO;
import java.io.IOException;
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
@WebServlet(name = "BookingController", urlPatterns = {"/BookingController"})
public class BookingController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR = "SeviceDetails-GetAppointment.jsp";
    private static final String SUCCESS = "404.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        boolean checkValidation = true;
        BookingDAO dao = new BookingDAO();
        ServiceDAO sdao = new ServiceDAO();
        String url = ERROR;
        try {
            String accountID = request.getParameter("accountID");
            String serviceID = request.getParameter("serviceID");
            String fullName = request.getParameter("fullName");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String area = request.getParameter("area");
            String vinHomesID = request.getParameter("vinHomesID");
            String typeOfService = request.getParameter("typeService");
            String date = request.getParameter("date");
            String time = request.getParameter("time");
            String message = request.getParameter("message");
            String status = "Xác nhận";
            String staffID = "";
            
            String bookingDate = date + " " + time + ":00";
            String bookingAddress = vinHomesID + " || " + area;

            if (vinHomesID == null) {
                String vinHomeIDError = "Vui lòng nhập mã phòng chung cư của bạn";
                request.setAttribute("vinHomeIDError", vinHomeIDError);
                checkValidation = false;
            }
                // Kiểm tra hợp lệ của fullName
            if (fullName == null || fullName.isEmpty()) {
                String fullNameError = "Vui lòng nhập họ và tên";
                request.setAttribute("fullNameError", fullNameError);
                checkValidation = false;
            }

                // Kiểm tra hợp lệ của email
            if (email == null || email.isEmpty()) {
                String emailError = "Vui lòng nhập địa chỉ email";
                request.setAttribute("emailError", emailError);
                checkValidation = false;
            }

                // Kiểm tra hợp lệ của phone
            if (phone == null || phone.isEmpty()) {
                String phoneError = "Vui lòng nhập số điện thoại";
                request.setAttribute("phoneError", phoneError);
                checkValidation = false;
            }

                // Kiểm tra hợp lệ của typeOfService
            if (typeOfService == null || typeOfService.isEmpty()) {
                String typeOfServiceError = "Vui lòng chọn loại dịch vụ";
                request.setAttribute("typeOfServiceError", typeOfServiceError);
                checkValidation = false;
            }

            if (area == null || area.isEmpty()) {
                String areaError = "Vui lòng nhập khu vực";
                request.setAttribute("areaError", areaError);
                checkValidation = false;
            }

                // Kiểm tra hợp lệ của date
            if (date == null || date.isEmpty()) {
                String dateError = "Vui lòng chọn ngày";
                request.setAttribute("dateError", dateError);
                checkValidation = false;
            }

                // Kiểm tra hợp lệ của time
            if (time == null || time.isEmpty()) {
                String timeError = "Vui lòng chọn giờ";
                request.setAttribute("timeError", timeError);
                checkValidation = false;
            }

            if (checkValidation == true) {
                ServiceDTO a = sdao.getServiceByID(serviceID);
                int totalPrice = a.getPrice();
                dao.InsertBooking(accountID, status, staffID, serviceID, totalPrice, bookingDate, bookingAddress, typeOfService, message);
                url = SUCCESS;
            } else {
                List<ServiceDTO> list = sdao.getAllService();
                ServiceDTO s = sdao.getServiceByID(serviceID);
                request.setAttribute("listS", list);
                request.setAttribute("ServiceDetail", s);
                url = ERROR;
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
