/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.NotificationDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trung Kien
 */
public class NotificationDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void InsertNotification(String accountID, String bookingID, String detail, String status) {
        String query = "INSERT INTO Notification (AccountID, BookingID, Detail, Create_at, Status)\n"
                + "VALUES ( ?, ?, ?, GETDATE(), ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            ps.setString(2, bookingID);
            ps.setNString(3, detail);
            ps.setString(4, status);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //lấy ra những notification dựa trên accountId
    public List<NotificationDTO> getAllNotiByAccountID(String accountID) {
        String query = "SELECT *\n"
                + "FROM Notification\n"
                + "WHERE AccountID = ?\n"
                + "ORDER BY ABS(DATEDIFF(minute, Create_at, GETDATE()))";
        List<NotificationDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new NotificationDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<NotificationDTO> getAllNotification() {
        String query = "SELECT *\n"
                + "FROM Notification\n"
                + "ORDER BY ABS(DATEDIFF(minute, Create_at, GETDATE()))";
        List<NotificationDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new NotificationDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    //count notification mà chưa có đọc
    public int CountUnreadNotification(String status) {
        String query = "SELECT COUNT(*) AS CountByStatus\n"
                + "FROM Notification\n"
                + "WHERE Status = ?";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("CountByStatus");
            }
        } catch (Exception e) {
        }
        return total;
    }

    public static void main(String[] args) {
        NotificationDAO dao = new NotificationDAO();
        List<NotificationDTO> list = dao.getAllNotiByAccountID("AC0013");
        for (NotificationDTO notificationDTO : list) {
            System.out.println(notificationDTO.toString());
        }
        int total = dao.CountUnreadNotification("false");
        System.out.println(total);
    }
}