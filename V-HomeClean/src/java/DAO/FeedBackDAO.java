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

    public List<FeedBackDTO> getListFeedBack() {
        String query = "SELECT FeedbackID, Date, Feedback_Text, Rating, f.AccountID, BookingID, a.FullName, a.Image\n"
                + "FROM Feedback f\n"
                + "JOIN Account a ON f.AccountID = a.AccountID;";
        List<FeedBackDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new FeedBackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<FeedBackDTO> pagingComment(int index, String blogID) {
        List<FeedBackDTO> list = new ArrayList<>();

        String query = "SELECT TOP 3 FeedbackID, f.AccountID,  Date,Feedback_Text, Rating, BookingID, a.FullName, a.Image\n"
                + "FROM Feedback f\n"
                + "JOIN Account a ON f.AccountID = a.AccountID\n"
                + "ORDER BY f.Date DESC;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, blogID);
            ps.setInt(2, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new FeedBackDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<FeedBackDTO> getAllFeedBack() {
        List<FeedBackDTO> list = new ArrayList<>();
        String query = "SELECT FeedbackID, Date, Feedback_Text, Rating, AccountID, BookingID, FullName, Image\n"
                + "FROM (\n"
                + "    SELECT \n"
                + "        f.FeedbackID, \n"
                + "        f.Date, \n"
                + "        f.Feedback_Text, \n"
                + "        f.Rating, \n"
                + "        f.AccountID, \n"
                + "        f.BookingID, \n"
                + "        a.FullName, \n"
                + "        a.Image,\n"
                + "        ROW_NUMBER() OVER (PARTITION BY a.FullName ORDER BY f.Date DESC) AS rn\n"
                + "    FROM Feedback f\n"
                + "    JOIN Account a ON f.AccountID = a.AccountID\n"
                + "    JOIN Booking b ON f.BookingID = b.BookingID\n"
                + "    WHERE b.BookingStatus = 'Hoàn thành'\n"
                + ") AS subquery\n"
                + "WHERE rn = 1\n"
                + "ORDER BY Date DESC;"; // Sửa ORDER BY thành "Date DESC" để lấy 3 feedback mới nhất
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new FeedBackDTO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public static void main(String[] args) {
        FeedBackDAO dao = new FeedBackDAO();
        List<FeedBackDTO> list = dao.getAllFeedBack();
        for (FeedBackDTO o : list) {
            System.out.println(o);
        }
    }
}
