/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.BlogDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu Doan
 */
public class BlogDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

//    public List<BlogDTO> getAllBlog() {
//        List<BlogDTO> list = new ArrayList<>();
//        String query = "SELECT b.BlogID, b.Title, b.SubTitle, b.Content, b.AccountID, b.Time, b.Image, bc.cateName\n"
//                + "FROM Blog b\n"
//                + "INNER JOIN BlogCate bc ON b.BlogCateID = bc.BlogCateID\n"
//                + "ORDER BY b.Time DESC";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new BlogDTO(rs.getString(1),
//                        rs.getNString(2),
//                        rs.getNString(3),
//                        rs.getNString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getString(7),
//                        rs.getNString(8),
//                        rs.getInt(9)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
    public List<BlogDTO> getAllBlog() {
        List<BlogDTO> list = new ArrayList<>();
        String query = "SELECT TOP 6 b.BlogID, b.Title, b.SubTitle, b.Content, b.AccountID, b.Time, b.Image, bc.cateName, b.blogCateID\n"
                + "FROM Blog b\n"
                + "INNER JOIN BlogCate bc ON b.BlogCateID = bc.BlogCateID\n"
                + "ORDER BY NEWID()";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BlogDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getNString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getNString(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public BlogDTO getBlogByID(String blogID) {
        String query = "SELECT BlogID, Title, SubTitle, Content, AccountID, Time, Image, cateName, b.BlogCateID FROM Blog b, BlogCate bc WHERE b.BlogCateID = bc.BlogCateID and blogID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new BlogDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getNString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getNString(8),
                        rs.getInt(9));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //Dem so luong blog trong database
    public int getTotalBlog() {
        String query = "SELECT COUNT(*) From Blog";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<BlogDTO> pagingBlog(int index) {
        List<BlogDTO> list = new ArrayList<>();

        String query = "SELECT BlogID, Title, Subtitle, Content, AccountID, Time, Image, CateName, b.BlogCateID \n"
                + "FROM Blog b, BlogCate bc \n"
                + "WHERE b.BlogCateID = bc.BlogCateID ORDER BY BlogID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new BlogDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getNString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getNString(8),
                        rs.getInt(9)));
            }
        } catch (Exception e) {
        }

        return list;

    }

    //dem so blog
    public int countBlogs() {
        String query = "SELECT COUNT(*) AS TotalBlogs FROM Blog";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("TotalBlogs");
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                // Handle exception appropriately
            }
        }
        return total;
    }

//    public void InsertBlog(String title, String subTitle, String content, String accountID, int blogCateID, String image) {
//        String query = "INSERT INTO Blog ( Title, SubTitle, Content, AccountID, BlogCateID, Time, Image)\n"
//                + "VALUES ( ?, ?, ?, ?, ?, GETDATE(), ?);";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, title);
//            ps.setNString(2, subTitle);
//            ps.setNString(3, content);
//            ps.setString(4, accountID);
//            ps.setInt(5, blogCateID);
//            ps.setString(6, image);
//
//            ps.executeUpdate();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
    public String insertBlog(String title, String subTitle, String content, String accountID, int blogCateID, String image) {
        String blogID = null;
        String query = "INSERT INTO Blog (Title, SubTitle, Content, AccountID, BlogCateID, Time, Image)\n"
                + "VALUES (?, ?, ?, ?, ?, GETDATE(), ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, title);
            ps.setString(2, subTitle);
            ps.setString(3, content);
            ps.setString(4, accountID);
            ps.setInt(5, blogCateID);
            ps.setString(6, image);

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                blogID = rs.getString(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return blogID;
    }



public static void main(String[] args) {

        BlogDAO dao = new BlogDAO();
//        String total = dao.insertBlog("1", "1", "1", "AC0001", 2, "1");
//        System.out.println(total);
        List<BlogDTO> list = dao.getAllBlog();
        for (BlogDTO o : list) {
            System.out.println(o);
    }

    }

}
