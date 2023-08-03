/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.AccountDAO;
import DAO.BlogDAO;
import DAO.BookingDAO;
import DAO.CommentDAO;
import DAO.NotificationDAO;
import DTO.AccountDTO;
import DTO.BlogDTO;
import DTO.BookingDTO;
import DTO.CommentDTO;
import DTO.NotificationDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Hieu Doan
 */
@WebServlet(name = "SingleBlogController", urlPatterns = {"/SingleBlogController"})
public class SingleBlogController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String blogID = request.getParameter("blogID");
        BlogDAO dao = new BlogDAO();
        NotificationDAO nDao = new NotificationDAO();
        AccountDAO aDao = new AccountDAO();
        BookingDAO bDao = new BookingDAO();
        List<BlogDTO> list = dao.getAllBlog();
        String action = request.getParameter("action");
        BlogDTO b = dao.getBlogByID(blogID);
        CommentDAO cdao = new CommentDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        String url = "singleBlog.jsp";
        String indexPage = request.getParameter("index");

        if (indexPage == null || indexPage.equals("-1")) {
            indexPage = "1";
        }

        int index = Integer.parseInt(indexPage);
        int count = cdao.CountComment(blogID);
        int endPage = count / 5;
        if (endPage % 5 != 0) {
            endPage++;
        }

        List<CommentDTO> listC = cdao.pagingComment(index, blogID);
        session.setAttribute("listB", list);
        session.setAttribute("listCmt", listC);
        session.setAttribute("tag", index);
        session.setAttribute("endP", endPage);

        try {
            if (action == null || action.isEmpty()) {
                request.setAttribute("listB", list);
                session.setAttribute("BlogDetail", b);
                listC = cdao.pagingComment(index, blogID);
                session.setAttribute("listCmt", listC);
                session.setAttribute("tag", index);
                session.setAttribute("endP", endPage);
                request.getRequestDispatcher(url).forward(request, response);
            }

            if (a != null) {
                String typeNotiUser = "User";
                String typeNotiStaff = "Staff";
                List<AccountDTO> listAllAccounts = aDao.getAllAccounts();
                session.setAttribute("listAllAccounts", listAllAccounts);
                List<NotificationDTO> listNotiUnread = nDao.getAllNotiByAccountIDAndStatusAndTypeNoti(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
                session.setAttribute("listNotiUnread", listNotiUnread);
                int totalUnreadNoti = nDao.CountUnreadNotificationAndTypeNotiAndAccountID(a.getAccountID(), "false", typeNotiUser, typeNotiStaff);
                session.setAttribute("totalUnreadNoti", totalUnreadNoti);
                List<BookingDTO> ListBookingAccounts = bDao.getBookingDetailByAccountID(a.getAccountID());
                session.setAttribute("ListBookingAccounts", ListBookingAccounts);
            }

            if (action.equalsIgnoreCase("Bình luận")) {
                if (a == null) {
                    url = "login.jsp";
                    String error = "Bạn cần đăng nhập tài khoản để bình luận.";
                    request.setAttribute("ERROR", error);
                    request.getRequestDispatcher(url).forward(request, response);
                } else {
                    try {
                        String message = request.getParameter("message");
                        String accountID = a.getAccountID();
                        String imageAcc = a.getImage();
                        String blogID1 = b.getBlogID();
                        cdao.AddComment(message, accountID, blogID1, imageAcc);
                        session.setAttribute("listB", list);
                        session.setAttribute("BlogDetail", b);
                        listC = cdao.pagingComment(index, blogID);
                        session.setAttribute("listCmt", listC);
                        session.setAttribute("tag", index);
                        session.setAttribute("endP", endPage);
                        response.sendRedirect("singleBlog.jsp#commentContainer");
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

            if (action.equalsIgnoreCase("paging")) {
                try {
                    listC = cdao.pagingComment(index, blogID);
                     session.setAttribute("listB", list);
                    session.setAttribute("BlogDetail", b);
                    session.setAttribute("listCmt", listC);
                    session.setAttribute("tag", index);
                    session.setAttribute("endP", endPage);
                    response.sendRedirect("singleBlog.jsp#commentContainer");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
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
