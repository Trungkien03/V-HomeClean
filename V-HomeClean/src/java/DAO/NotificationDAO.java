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

    public void InsertNotification(String accountID, String bookingID, String detail, String status, String typeNoti) {
        String query = "INSERT INTO Notification (AccountID, BookingID, Detail, Create_at, Status, TypeNoti)\n"
                + "VALUES ( ?, ?, ?, GETDATE(), ?, ?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            ps.setString(2, bookingID);
            ps.setNString(3, detail);
            ps.setString(4, status);
            ps.setString(5, typeNoti);
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
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<NotificationDTO> getAllNotiByAccountIDAndStatusAndTypeNoti(String accountID, String status, String typeNotiUser, String typeNotiStaff) {
        String query = "SELECT *\n"
                + "FROM Notification\n"
                + "WHERE AccountID = ? AND Status = ? AND (TypeNoti = ? OR TypeNoti = ?)\n"
                + "ORDER BY ABS(DATEDIFF(second, Create_at, GETDATE())),\n"
                + "         ABS(DATEDIFF(minute, Create_at, GETDATE())),\n"
                + "         ABS(DATEDIFF(day, Create_at, GETDATE())),\n"
                + "         ABS(DATEDIFF(month, Create_at, GETDATE())),\n"
                + "         ABS(DATEDIFF(year, Create_at, GETDATE()))";
        List<NotificationDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            ps.setString(2, status);
            ps.setString(3, typeNotiUser);
            ps.setString(4, typeNotiStaff);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new NotificationDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public List<NotificationDTO> getAllNotificationByTypeNoti(String typeNoti) {
        String query = "SELECT *\n"
                + "FROM Notification\n"
                + "WHERE TypeNoti = ?\n"
                + "ORDER BY ABS(DATEDIFF(minute, Create_at, GETDATE()))";
        List<NotificationDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, typeNoti);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new NotificationDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    //count notification mà chưa có đọc
    public int CountUnreadNotificationAndtypeNoti(String status, String typeNoti) {
        String query = "SELECT COUNT(*) AS CountByStatus\n"
                + "FROM Notification\n"
                + "WHERE Status = ? AND TypeNoti = ?";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setString(2, typeNoti);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("CountByStatus");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return total;

    }

    //count notification riêng của từng account mà account đó chưa đọc
    public int CountUnreadNotificationAndTypeNotiAndAccountID(String accountID, String status, String typeNotiUser, String typeNotiStaff) {
        String query = "SELECT COUNT(*) AS CountByStatus\n"
                + "FROM Notification\n"
                + "WHERE AccountID = ? AND Status = ? AND TypeNoti IN (?, ?)";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            ps.setString(2, status);
            ps.setString(3, typeNotiUser);
            ps.setString(4, typeNotiStaff);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("CountByStatus");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return total;
    }

    public static void main(String[] args) {
        String typeAdmin = "Admin";
        String typeUser = "User";
        String typeStaff = "Staff";
        NotificationDAO dao = new NotificationDAO();
        List<NotificationDTO> list = dao.getAllNotiByAccountIDAndStatusAndTypeNoti("AC0002", "false", typeUser, typeStaff);
        for (NotificationDTO notificationDTO : list) {
            System.out.println(notificationDTO.toString());
        }

        int total = dao.CountUnreadNotificationAndTypeNotiAndAccountID("AC0002", "false", typeUser, typeStaff);
        System.out.println(total);
    }
}
