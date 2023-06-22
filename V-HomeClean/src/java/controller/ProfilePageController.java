
package controller;

import DAO.AccountDAO;
import DAO.BookingDAO;
import DTO.AccountDTO;
import DTO.BookingDTO;
import java.io.IOException;
import java.util.List;
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
@WebServlet(name = "ProfilePageController", urlPatterns = {"/ProfilePageController"})
public class ProfilePageController extends HttpServlet {

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
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        AccountDAO aDao = new AccountDAO();
        BookingDAO bDao = new BookingDAO();
        String action = request.getParameter("action");
        String url = "userProfile.jsp";
        if (a == null) {
            response.sendRedirect("login.jsp");
        } else {
            try {
                if (action.equalsIgnoreCase("Cập nhật")) {
                    String fullName = request.getParameter("fullName");
                    String dateOfBirth = request.getParameter("dateOfBirth");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");
                    String gender = request.getParameter("gender");
                    int roleID = a.getRoleID();
                    String password = a.getPassword();
                    String accountID = a.getAccountID();
                    String image = request.getParameter("image");
                    if (image == null || image.isEmpty()) {
                        image = a.getImage();
                    }
                    aDao.UpdateAccountProfile(email, password, fullName, address, phone, roleID, gender, dateOfBirth, image, 0.0, accountID);
                    a = aDao.Login(email, password);
                    session.setAttribute("acc", a);
                    request.setAttribute("message", "Cập nhật thông tin tài khoản thành công!");
                    url = "userProfile.jsp";
                }
                if (action.equalsIgnoreCase("Thay Đổi Mật Khẩu")) {
                    String password = request.getParameter("password");
                    String newPassword = request.getParameter("newPassword");
                    String confirm = request.getParameter("confirm");
                    AccountDAO dao = new AccountDAO();
                    AccountDTO account = (AccountDTO) session.getAttribute("acc");
                    if (password.equals(account.getPassword())) {
                        if (newPassword.equals(confirm)) {
                            account.setPassword(newPassword);
                            session.setAttribute("acc", account);
                            boolean checkUpdate = dao.updateAccount(account);
                            if (checkUpdate) {
                                request.setAttribute("messagePass", "Cập nhật mật khẩu thành công!");
                                request.setAttribute("status", "change-password");
                                url = "userProfile.jsp";
                            }
                        } else {
                            request.setAttribute("ERRORPass", " Mật khẩu và xác nhận mật khẩu "
                                    + "không trùng khớp! ");
                            request.setAttribute("status", "change-password");
                            url = "userProfile.jsp";
                        }
                    } else {

                        request.setAttribute("ERROR", " Mật khẩu cũ không trùng khớp! ");
                        request.setAttribute("status", "change-password");
                        url = "userProfile.jsp";
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                String accountID = a.getAccountID();
                List<BookingDTO> BookingList = bDao.getBookingDetailByAccountID(accountID);
                request.setAttribute("ListB", BookingList);
                request.getRequestDispatcher(url).forward(request, response);
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
