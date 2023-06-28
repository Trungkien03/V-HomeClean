package controller.admin;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import DAO.ServiceDAO;
import DTO.AccountDTO;
import DTO.ServiceDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
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
@WebServlet(urlPatterns = {"/ServiceGeneralController"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2, // 2MB
        maxFileSize = 1024 * 1024 * 10, // 10MB
        maxRequestSize = 1024 * 1024 * 50) // 50MB
public class ServiceGeneralController extends HttpServlet {

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
        ServiceDAO sDao = new ServiceDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        String action = request.getParameter("action");
        if (a == null) {
            response.sendRedirect("dashboard/login.jsp");
        } else {
            try {
                if (action == null || action.isEmpty()) {
                    String serviceID = request.getParameter("serviceID");
                    ServiceDTO service = sDao.getServiceByID(serviceID);
                    session.setAttribute("service", service);
                }
                if (action.equalsIgnoreCase("Chỉnh sửa")) {
                    String serviceID = request.getParameter("serviceID");
                    ServiceDTO b = sDao.getServiceByID(serviceID);
                    String serviceName = request.getParameter("serviceName");
                    String cateIDString = request.getParameter("serviceType");
                    int cateID = Integer.parseInt(cateIDString);
                    String priceString = request.getParameter("price");
                    // Loại bỏ ký tự đặc biệt từ chuỗi
                    priceString = priceString.replaceAll("[^0-9]", "");
                    // Chuyển đổi thành số
                    int price = Integer.parseInt(priceString);

                    Part part = request.getPart("image");
                    String realPath = request.getServletContext().getRealPath("/img/");
                    realPath = realPath.replace("\\build\\web", "\\web");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    String imagePath = "img/" + filename; // Đường dẫn tới ảnh

                    if (!Files.exists(Paths.get(realPath))) {
                        Files.createDirectories(Paths.get(realPath));
                    }

                    part.write(Paths.get(realPath, filename).toString());
                    if (filename == null || filename.isEmpty() || filename == "") {
                        imagePath = b.getImage();
                    }

                    String serviceDetail = b.getServiceDetail();
                    sDao.UpdateServiceByID(serviceName, price, serviceDetail, cateID, imagePath, serviceID);
                    String message = "Chỉnh sửa thông tin thành công!";
                    ServiceDTO service = sDao.getServiceByID(serviceID);
                    request.setAttribute("message", message);
                    session.setAttribute("service", service);
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                request.getRequestDispatcher("/dashboard/general-service.jsp").forward(request, response);
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
