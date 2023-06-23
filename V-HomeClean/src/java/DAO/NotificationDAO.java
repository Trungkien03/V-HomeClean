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

    public void InsertNotification(String accountID, String detail, String status) {
        String query = "INSERT INTO Notification (AccountID, Detail, Status)\n"
                + "VALUES (?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            ps.setNString(2, detail);
            ps.setString(3, status);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
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
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5)));
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
        List<NotificationDTO> list = dao.getAllNotification();
        for (NotificationDTO notificationDTO : list) {
            System.out.println(notificationDTO.toString());
        }
        int total = dao.CountUnreadNotification("false");
        System.out.println(total);
    }
}
