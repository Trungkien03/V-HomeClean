/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.AccountDAO;
import DTO.AccountDTO;
import DTO.UserError;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Trung Kien
 */
@WebServlet(name = "AccountCreateController", urlPatterns = {"/AccountCreateController"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class AccountCreateController extends HttpServlet {

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
        String action = request.getParameter("action");
        String url = "/dashboard/create-account.jsp";
        boolean checkValidation = true;
        UserError error = new UserError();
        AccountDAO dao = new AccountDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                if (action == null || action.isEmpty()) {
                    request.getRequestDispatcher(url).forward(request, response);
                }
                if (action.equalsIgnoreCase("Tạo Tài Khoản Mới")) {
                    try {
                        String email = request.getParameter("email");
                        String password = request.getParameter("password");
                        String fullName = request.getParameter("fullName");
                        String phone = request.getParameter("phone");
                        String RoleString = request.getParameter("roleID");
                        String Gender = request.getParameter("gender");
                        String dateOfBirth = request.getParameter("dateOfBirth");
                        String address = request.getParameter("address");
                        String status = "1";
                        String salaryString = request.getParameter("salary");
                        salaryString = salaryString.replaceAll("[^0-9]", "");
                        String imagePath = "img/user.jpg"; 
                        try {
                            Part part = request.getPart("image");
                            String realPath = request.getServletContext().getRealPath("/img/");
                            realPath = realPath.replace("\\build\\web", "\\web");
                            String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                            imagePath = "img/" + filename; // Đường dẫn tới ảnh

                            if (!Files.exists(Paths.get(realPath))) {
                                Files.createDirectories(Paths.get(realPath));
                            }

                            part.write(Paths.get(realPath, filename).toString());
                            if (filename == null || filename.isEmpty()) {
                                imagePath = "img/user.jpg";
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        
                        AccountDTO b = dao.CheckDuplicatedEmail(email);
                        if (b != null) {
                            error.setEmail("Email đã được đăng ký, vui lòng sử dụng email khác!");
                            checkValidation = false;
                        } else if (email.isEmpty()) {
                            error.setEmail("Vui lòng nhập địa chỉ email!");
                            checkValidation = false;
                        } else if (!dao.isValidEmail(email)) {
                            error.setEmail("Địa chỉ email không hợp lệ!");
                            checkValidation = false;
                        }

                        AccountDTO c = dao.CheckDuplicatePhone(phone);
                        if (c != null) {
                            error.setPhone("Số điện thoại này đã được đăng ký!");
                            checkValidation = false;
                        } else if (phone.isEmpty()) {
                            error.setPhone("Vui lòng nhập số điện thoại!");
                            checkValidation = false;
                        } else if (!dao.isValidPhoneNumber(phone)) {
                            error.setPhone("Số điện thoại không hợp lệ!");
                            checkValidation = false;
                        }

                        if (fullName == null || fullName.isEmpty()) {
                            error.setFullName("Vui lòng nhập tên đầy đủ!");
                            checkValidation = false;
                        } else if (fullName.length() < 10) {
                            error.setFullName("Tên đầy đủ phải chứa ít nhất " + 10 + " ký tự!");
                            checkValidation = false;
                        }

                        if (Gender == null || Gender.isEmpty()) {
                            error.setGender("Vui lòng chọn giới tính!");
                            checkValidation = false;
                        }

                        if (dateOfBirth == null) {
                            error.setDateOfBirth("Vui lòng nhập ngày sinh!");
                            checkValidation = false;
                        }

                        if (address == null || address.isEmpty()) {
                            error.setAddress("Vui lòng nhập địa chỉ");
                            checkValidation = false;
                        }
                        if (RoleString == null || RoleString.isEmpty()) {
                            error.setRoleID("Vui Lòng Chọn Chức Vụ");
                            checkValidation = false;
                        }

                        if (checkValidation == true) {
                            int salary = Integer.parseInt(salaryString);
                            int roleID = Integer.parseInt(RoleString);
                            dao.Register(email, password, fullName, address, phone, roleID, dateOfBirth, Gender, status, imagePath, salary);
                            AccountDTO NewAccount = dao.GetAccountByEmail(email);
                            session.setAttribute("account", NewAccount);
                            request.getRequestDispatcher("/dashboard/general.jsp").forward(request, response);
                        } else {
                            request.setAttribute("USER_ERROR", error);
                            request.getRequestDispatcher("/dashboard/create-account.jsp").forward(request, response);
                        }
                    } catch (Exception e) {
                    }
                }

            } catch (Exception e) {
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
