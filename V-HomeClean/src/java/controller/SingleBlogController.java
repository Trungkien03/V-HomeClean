/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import DAO.BlogDAO;
import DAO.CommentDAO;
import DTO.AccountDTO;
import DTO.BlogDTO;
import DTO.CommentDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
        List<BlogDTO> list = dao.getAllBlog();
        String action = request.getParameter("action");
        BlogDTO b = dao.getBlogByID(blogID);
        CommentDAO cdao = new CommentDAO();
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        String url = "singleBlog.jsp";
        try {
            if (action.equalsIgnoreCase("Bình luận")) {
                if (a == null) {
                    url = "login.jsp";
                    String error = "Bạn cần đăng nhập tài khoản để bình luận.";
                    request.setAttribute("ERROR", error);
                } else {
                    String message = request.getParameter("message");
                    String accountID = a.getAccountID();
                    String blogID1 = b.getBlogID();
                    cdao.AddComment(message, accountID, blogID1);
                }

            } 
//            else if (action.equalsIgnoreCase("Xuất Bản")) {
//                if (a == null) {
//                    url = "login.jsp";
//                    String error = "Bạn cần đăng nhập tài khoản để đăng bài blog.";
//                    request.setAttribute("ERROR", error);
//                } else {
//                    String accountID = a.getAccountID();
//                    String image = request.getParameter("image");
//                    int blogCateID = Integer.parseInt(request.getParameter("blogCateID"));
//                    String title = request.getParameter("title");
//                    String subTitle = request.getParameter("subTitle");
//                    String content = request.getParameter("content");
//                    dao.InsertBlog(title, subTitle, content, accountID, blogCateID, image);
//                    url = "blogWithSide.jsp";
//                }
//            }

        } catch (Exception e) {
        }
        request.setAttribute("listB", list);
        session.setAttribute("BlogDetail", b);
        List<CommentDTO> listC = cdao.getCommentV2(blogID);
        request.setAttribute("listCmt", listC);
        request.getRequestDispatcher(url).forward(request, response);

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
