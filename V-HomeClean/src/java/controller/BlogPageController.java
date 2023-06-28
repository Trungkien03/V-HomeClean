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
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
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
 * @author Hieu Doan
 */
@MultipartConfig
@WebServlet(name = "BlogPageController", urlPatterns = {"/BlogPageController"})
public class BlogPageController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        String url = "blogWithSide.jsp";
        String action = request.getParameter("action");
        AccountDTO a = (AccountDTO) session.getAttribute("acc");
        String indexPage = request.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        if (indexPage.equals("-1")) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);

        BlogDAO dao = new BlogDAO();
        //List<BlogDTO> list = dao.getAllBlog();

        int count = dao.getTotalBlog();
        int endPage = count / 6;
        if (endPage % 6 != 0) {
            endPage++;
        }
        CommentDAO cdao = new CommentDAO();
        List<BlogDTO> list = dao.pagingBlog(index);
        try {

            if (action.equalsIgnoreCase("Xuất Bản")) {
                if (a == null) {
                    url = "login.jsp";
                    String error = "Bạn cần đăng nhập tài khoản để đăng bài viết.";
                    request.setAttribute("ERROR", error);
                } else {
                    String accountID = a.getAccountID();
                    Part part = request.getPart("image");
                    String realPath = request.getServletContext().getRealPath("/img/");
                    realPath = realPath.replace("\\build\\web", "\\web");
                    String filename = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                    String imagePath = "img/" + filename; // Đường dẫn tới ảnh

                    if (!Files.exists(Paths.get(realPath))) {
                        Files.createDirectories(Paths.get(realPath));
                    }

                    part.write(Paths.get(realPath, filename).toString());

                    int blogCateID = Integer.parseInt(request.getParameter("blogCateID"));
                    String title = request.getParameter("title");
                    String subTitle = request.getParameter("subTitle");
                    String content = request.getParameter("content");
                    String blogID = dao.insertBlog(title, subTitle, content, accountID, blogCateID, imagePath);
                    BlogDTO b = dao.getBlogByID(blogID);
                    List<CommentDTO> listC = cdao.getCommentV2(blogID);
                    request.setAttribute("listB", list);
                    session.setAttribute("BlogDetail", b);
                    request.setAttribute("listCmt", listC);
                    url = "singleBlog.jsp";
                    request.getRequestDispatcher(url).forward(request, response);
                }
            }
        } catch (Exception e) {
        }

        request.setAttribute("listBlog", list);
        request.setAttribute("endP", endPage);
        request.setAttribute("tag", index);
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
