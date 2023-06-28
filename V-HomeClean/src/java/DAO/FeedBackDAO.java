/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.FeedBackDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trung Kien
 */
public class FeedBackDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void insertFeedback(String detail, double rating, String accountID, String bookingID) {
        String query = "INSERT INTO Feedback (Date, Feedback_Text, Rating, AccountID, BookingID)\n"
                + "VALUES (GETDATE(), ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, detail);
            ps.setDouble(2, rating);
            ps.setString(3, accountID);
            ps.setString(4, bookingID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    public List<FeedBackDTO> getListFeedBack(){
        String query = "SELECT * FROM Feedback";
        List<FeedBackDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new FeedBackDTO(rs.getString(1), 
                        rs.getString(2), 
                        rs.getNString(3), 
                        rs.getDouble(4), 
                        rs.getString(5), 
                        rs.getString(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        FeedBackDAO dao = new FeedBackDAO();
        List<FeedBackDTO> list = dao.getListFeedBack();
        for (FeedBackDTO feedBackDTO : list) {
            System.out.println(feedBackDTO.toString());
        }
    }
}
