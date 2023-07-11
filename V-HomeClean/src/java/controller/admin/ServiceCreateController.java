/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
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
@WebServlet(name = "ServiceCreateController", urlPatterns = {"/ServiceCreateController"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ServiceCreateController extends HttpServlet {

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
        String url = "/dashboard/create-service.jsp";
        boolean checkValidation = true;
        ServiceDAO sDao = new ServiceDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                if (action == null || action.isEmpty()) {
                    request.getRequestDispatcher(url).forward(request, response);
                }
                if (action.equalsIgnoreCase("Tạo Mới Dịch vụ")) {
                    try {
                        String serviceName = request.getParameter("serviceName");
                        String serviceType = request.getParameter("serviceType");
                        int cateID = Integer.parseInt(serviceType);
                        String serviceDetails = request.getParameter("serviceDetails");
                        String priceString = request.getParameter("servicePrice");
                        priceString = priceString.replaceAll("[^0-9]", "");
                        int price = Integer.parseInt(priceString);

                        
                        Part part = request.getPart("serviceImage");
                        String realPath = request.getServletContext().getRealPath("/img/");
                        realPath = realPath.replace("\\build\\web", "\\web");
                        String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                        String imageExtensions = "jpg|jpeg|png|gif"; // định dạng các file ảnh
                        String regex = "^.+\\.(" + imageExtensions + ")$";
                        Pattern pattern = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
                        Matcher matcher = pattern.matcher(filename);
                        String imagePath = "img/" + filename; // Đường dẫn tới ảnh

                        if (!Files.exists(Paths.get(realPath))) {
                            Files.createDirectories(Paths.get(realPath));
                        }

                        part.write(Paths.get(realPath, filename).toString());
//                        String serviceImageString = request.getParameter("serviceImage");
//                        String serviceImage = "img/" + serviceImageString;

                        List<ServiceDTO> serviceList = sDao.getAllService();
                        for (ServiceDTO serviceDTO : serviceList) {
                            if (serviceDTO.getCateServiceName().equalsIgnoreCase(serviceName)) {
                                checkValidation = false;
                                String duplicatedName = "Tên dịch vụ bị trùng";
                                request.setAttribute("ErrorName", duplicatedName);
                            }
                        }
                        if (!matcher.matches()) {
                            checkValidation = false;
                            request.setAttribute("error", "Vui lòng chọn một file hình ảnh");
                        }
                        if (checkValidation == true) {
                            sDao.InsertNewService(serviceName, price, serviceDetails, cateID, imagePath, "true");
                            ServiceDTO newService = sDao.GetServiceByName(serviceName);
                            session.setAttribute("service", newService);
                            request.setAttribute("status", "create-service");
                            url = "/dashboard/general-service.jsp";
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        request.getRequestDispatcher(url).forward(request, response);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
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
