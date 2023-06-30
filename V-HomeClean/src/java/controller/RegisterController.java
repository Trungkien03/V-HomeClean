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
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private static final String ERROR = "login.jsp";
    private static final String SUCCESS = "index.jsp";
    private static final int MIN_FULLNAME_LENGTH = 6;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        String url = ERROR;
        boolean checkValidation = true;
        UserError error = new UserError();
        AccountDAO dao = new AccountDAO();
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String confirm = request.getParameter("confirmP");
            String fullName = request.getParameter("fullName");
            String roomID = request.getParameter("roomID");
            String area = request.getParameter("area");
            String phone = request.getParameter("phone");
            int roleID = 4;
            String Gender = request.getParameter("gender");
            String dateOfBirth = request.getParameter("DateOfBirth");
            String status = "1";
            String image = "img/user.jpg";
            double salary = 0.0;
            String address = "";
            AccountDTO a = dao.CheckDuplicatedEmail(email);
            if (a != null) {
                error.setEmail("Email đã được đăng ký, vui lòng sử dụng email khác!");
                checkValidation = false;
            } else if (email.isEmpty()) {
                error.setEmail("Vui lòng nhập địa chỉ email!");
                checkValidation = false;
            } else if (!dao.isValidEmail(email)) {
                error.setEmail("Địa chỉ email không hợp lệ!");
                checkValidation = false;
            }

            AccountDTO b = dao.CheckDuplicatePhone(phone);
            if (b != null) {
                error.setPhone("Số điện thoại này đã được đăng ký!");
                checkValidation = false;
            } else if (phone.isEmpty()) {
                error.setPhone("Vui lòng nhập số điện thoại!");
                checkValidation = false;
            } else if (!dao.isValidPhoneNumber(phone)) {
                error.setPhone("Số điện thoại không hợp lệ!");
                checkValidation = false;
            }

            if (!password.equals(confirm)) {
                error.setConfirm("Xác nhận mật khẩu không hợp lệ!");
                checkValidation = false;
            }

            if (fullName.isEmpty()) {
                error.setFullName("Vui lòng nhập tên đầy đủ!");
                checkValidation = false;
            } else if (fullName.length() < MIN_FULLNAME_LENGTH) {
                error.setFullName("Tên đầy đủ phải chứa ít nhất " + MIN_FULLNAME_LENGTH + " ký tự!");
                checkValidation = false;
            }

            if (roomID.isEmpty()) {
                String roomIDError = "Vui Lòng nhập mã phòng";
                request.setAttribute("roomIDError", roomIDError);
                checkValidation = false;
            }
            if (area == null || area.isEmpty()) {
                String areaError = "Vui lòng nhập khu vực";
                request.setAttribute("areaError", areaError);
                checkValidation = false;
            }
            if (!roomID.isEmpty() && !area.isEmpty()) {
                address = roomID + " || " + area;
            }else{
                error.setAddress("Vui lòng nhập địa chỉ!");
                checkValidation = false;
            }

            if (Gender == null || Gender.isEmpty()) {
                error.setGender("Vui lòng chọn giới tính!");
                checkValidation = false;
            }

            if (dateOfBirth.isEmpty()) {
                error.setDateOfBirth("Vui lòng nhập ngày sinh!");
                checkValidation = false;
            }

            if (checkValidation == true) {
                dao.Register(email, password, fullName, address, phone, roleID, dateOfBirth, Gender, status, image, salary);
                AccountDTO c = dao.Login(email, password);
                HttpSession session = request.getSession();
                session.setAttribute("acc", c);
                url = SUCCESS;
            } else {
                request.setAttribute("USER_ERROR", error);
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
