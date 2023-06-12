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

/**
 *
 * @author Hieu Doan
 */
public class CommentDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

//    public CommentDTO getBlogByID(String serviceID) {
//        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName \n"
//                + "FROM Service s, CateService c\n"
//                + "WHERE s.CateID = c.CateID and ServiceID = ?";
//        try {
//            conn = new DBContext().getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, serviceID);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                return new ServiceDTO(rs.getString(1),
//                        rs.getNString(2),
//                        rs.getInt(3),
//                        rs.getNString(4),
//                        rs.getString(5),
//                        rs.getString(6),
//                        rs.getNString(7));
//            }
//        } catch (Exception e) {
//        }
//        return null;
//    }

    public void AddComment(String message, String accountID, String blogID) {
        String query = "INSERT INTO Comment (Message, Time, AccountID, BlogID)\n"
                + "VALUES (?, GETDATE(), ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
         
            ps.setString(1, message);
            ps.setString(2, accountID);
            ps.setString(3, blogID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
