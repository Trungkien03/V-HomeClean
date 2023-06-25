/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.CommentDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu Doan
 */
public class CommentDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void AddComment(String message, String accountID, String blogID, String imageAcc) {
        String query = "INSERT INTO Comment (Message, Time, AccountID, BlogID, Image)\n"
                + "VALUES (?, GETDATE(), ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);

            ps.setString(1, message);
            ps.setString(2, accountID);
            ps.setString(3, blogID);
            ps.setString(4, imageAcc);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

//    public CommentDTO getComment(String blogID) {
//        String query = "SELECT c.Message, c.Time, a.FullName\n"
//                + "FROM Account a\n"
//                + "INNER JOIN Comment c ON a.AccountID = c.AccountID\n"
//                + "WHERE c.BlogID = ?;";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, blogID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new CommentDTO(rs.getInt(1),
//                        rs.getNString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getNString(6));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }
//    public List<CommentDTO> getCommentV2() {
//        List<CommentDTO> list = new ArrayList<>();
//        String query = "SELECT c.Message, c.Time, a.FullName\n"
//                + "FROM Account a\n"
//                + "INNER JOIN Comment c ON a.AccountID = c.AccountID\n"
//                + "WHERE c.BlogID = ?;";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new CommentDTO(rs.getInt(1),
//                        rs.getNString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getNString(6)));
//            }
//        } catch (Exception e) {
//        }
//        return list;
//    }
//    public List<CommentDTO> getCommentByBlogID(String blogID) {
//        List<CommentDTO> list = new ArrayList<>();
//        String query = "SELECT c.Message, c.Time, a.FullName "
//                + "FROM Comment c "
//                + "INNER JOIN Account a ON a.AccountID = c.AccountID "
//                + "WHERE c.BlogID = ?";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, blogID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new CommentDTO(rs.getInt(1),
//                        rs.getNString(2),
//                        rs.getString(3),
//                        rs.getString(4),
//                        rs.getString(5),
//                        rs.getNString(6)));
//            }
//        } catch (Exception e) {
//            // Xử lý exception (nếu cần)
//        } finally {
//            // Đóng kết nối và tài nguyên (ResultSet, PreparedStatement, Connection) ở đây
//        }
//        return list;
//    }
    public List<CommentDTO> getCommentV2(String blogID) {
        List<CommentDTO> list = new ArrayList<>();
        String query = "SELECT c.CommentID,c.Message, c.Time,c.AccountID, c.BlogID, a.FullName, c.Image\n"
                + "FROM Comment c\n"
                + "INNER JOIN Account a ON a.AccountID = c.AccountID\n"
                + "WHERE c.BlogID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CommentDTO(rs.getInt(1),
                        rs.getNString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getNString(7)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ (Exception) tại đây
        }
        return list;
    }

    public int CountComment() {
        String query = "SELECT COUNT(*)  FROM Comment;";
        int totalComments = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalComments = rs.getInt("total_comment");
            }
        } catch (Exception e) {
        }
        return totalComments;
    }

    public List<CommentDTO> pagingComment(int index) {
        List<CommentDTO> list = new ArrayList<>();

        String query = "SELECT c.CommentID,c.Message, c.Time,c.AccountID, c.BlogID, a.FullName, c.Image \n"
                + "FROM Comment c, Account a\n"
                + "WHERE c.AccountID = a.AccountID ORDER BY BlogID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CommentDTO(rs.getInt(1),
                        rs.getNString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getNString(7)));
            }
        } catch (Exception e) {
        }

        return list;

    }

    public static void main(String[] args) {
        CommentDAO dao = new CommentDAO();
        List<CommentDTO> list = dao.getCommentV2("Bl0001");
        for (CommentDTO commentDTO : list) {
            System.out.println(commentDTO.toString());
        }
    }

}
