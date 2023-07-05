/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.BookingDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trung Kien
 */
public class BookingDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public int InsertBooking(String accountID, String status, String staffID, String serviceID, int totalPrice, String bookingDate, String bookingAddress, String typeOfService, String message) {
        int bookingID = -1;
        try {
            conn = new DBContext().getConnection();
            conn.setAutoCommit(false); // Disable auto-commit

            // Insert data into the Booking table
            String bookingQuery = "INSERT INTO Booking (AccountID, BookingStatus, StaffID, ServiceID) VALUES (?, ?, ?, ?)";
            ps = conn.prepareStatement(bookingQuery, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, accountID);
            ps.setNString(2, status);
            ps.setString(3, staffID);
            ps.setString(4, serviceID);
            ps.executeUpdate();

            // Retrieve the generated BookingID
            try (ResultSet generatedKeys = ps.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    bookingID = generatedKeys.getInt(1);
                } else {
                    throw new SQLException("Failed to retrieve generated BookingID.");
                }
            }

            // Insert data into the BookingDetail table
            String bookingDetailQuery = "INSERT INTO BookingDetail (BookingID, TotalPrice, BookingDate, BookingAddress, TypeOfService, Message) VALUES (?, ?, ?, ?, ?, ?)";
            ps = conn.prepareStatement(bookingDetailQuery);
            ps.setInt(1, bookingID);
            ps.setInt(2, totalPrice);
            ps.setString(3, bookingDate);
            ps.setNString(4, bookingAddress);
            ps.setNString(5, typeOfService);
            ps.setNString(6, message);
            ps.executeUpdate();

            conn.commit(); // Commit the transaction
        } catch (Exception e) {
            // Handle exceptions and perform rollback if necessary
            e.printStackTrace();
            if (conn != null) {
                try {
                    conn.rollback();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } finally {
            // Close connections and resources
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return bookingID;
    }

    //get all booking by id
    public List<BookingDTO> getBookingDetailByAccountID(String accountID) {
        String query = "SELECT b.BookingID, b.AccountID, b.BookingStatus, b.StaffID, b.ServiceID, s.ServiceName ,bd.BookingDetail_ID, bd.TotalPrice, bd.BookingDate, bd.BookingAddress, bd.TypeOfService, bd.Message\n"
                + "FROM Booking b, BookingDetail bd , Service s\n"
                + "WHERE b.BookingID = bd.BookingID AND b.ServiceID = s.ServiceID AND b.AccountID = ?";
        List<BookingDTO> bookingList = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            rs = ps.executeQuery();
            while (rs.next()) {
                bookingList.add(new BookingDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getNString(10),
                        rs.getNString(11),
                        rs.getNString(12)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookingList;
    }

    //get all booking by id
    public List<BookingDTO> getBookingDetailByStaffID(String StaffID) {
        String query = "SELECT b.BookingID, b.AccountID, b.BookingStatus, b.StaffID, b.ServiceID, s.ServiceName ,bd.BookingDetail_ID, bd.TotalPrice, bd.BookingDate, bd.BookingAddress, bd.TypeOfService, bd.Message\n"
                + "FROM Booking b, BookingDetail bd , Service s\n"
                + "WHERE b.BookingID = bd.BookingID AND b.ServiceID = s.ServiceID AND b.StaffID = ?";
        List<BookingDTO> bookingList = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, StaffID);
            rs = ps.executeQuery();
            while (rs.next()) {
                bookingList.add(new BookingDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getNString(10),
                        rs.getNString(11),
                        rs.getNString(12)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookingList;
    }

    //lấy Booking bằng booking id
    public BookingDTO getBookingByID(String bookingID) {
        String query = "SELECT b.BookingID, b.AccountID, b.BookingStatus, b.StaffID, b.ServiceID, s.ServiceName ,bd.BookingDetail_ID, bd.TotalPrice, bd.BookingDate, bd.BookingAddress, bd.TypeOfService, bd.Message\n"
                + "FROM Booking b, BookingDetail bd , Service s\n"
                + "WHERE b.BookingID = bd.BookingID AND b.ServiceID = s.ServiceID AND b.BookingID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, bookingID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new BookingDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getNString(10),
                        rs.getNString(11),
                        rs.getNString(12));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    //đếm số đơn dịch vụ
    public int countTotalBooking() {
        String query = "SELECT COUNT(*) AS TotalBookings FROM Booking";
        int totalBookings = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalBookings = rs.getInt("TotalBookings");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return totalBookings;
    }

    //đếm nhưng thằng booking khác status là "hủy"
    public int CountTotalBookingExceptStatus(String status) {
        String query = "SELECT COUNT(*) AS TotalBookings\n"
                + "FROM Booking\n"
                + "WHERE BookingStatus != ?";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, status);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("TotalBookings");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return total;
    }

    // lấy ra tất cả Booking
    public List<BookingDTO> getAllLatestBookings() {
        String query = "SELECT b.BookingID, b.AccountID, b.BookingStatus, b.StaffID, b.ServiceID, s.ServiceName, bd.BookingDetail_ID, bd.TotalPrice, bd.BookingDate, bd.BookingAddress, bd.TypeOfService, bd.Message\n"
                + "FROM Booking b\n"
                + "JOIN BookingDetail bd ON b.BookingID = bd.BookingID\n"
                + "JOIN Service s ON b.ServiceID = s.ServiceID\n"
                + "WHERE b.BookingStatus != 'hủy'\n"
                + "ORDER BY ABS(DATEDIFF(day, bd.BookingDate, GETDATE()))";
        List<BookingDTO> bookingList = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                bookingList.add(new BookingDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getNString(6),
                        rs.getString(7),
                        rs.getInt(8),
                        rs.getString(9),
                        rs.getNString(10),
                        rs.getNString(11),
                        rs.getNString(12)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bookingList;
    }

    // cập nhật nhân viên cho đơn hàng từ manager
    public void updateBookingWithStaffIDandStatus(String staffID, String status, int bookingID) {
        String query = "UPDATE Booking\n"
                + "SET StaffID = ?, BookingStatus = ?\n"
                + "WHERE BookingID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, staffID);
            ps.setNString(2, status);
            ps.setInt(3, bookingID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //cập nhận trạng thái đơn từ nhân viên
    public void updateBookingWithBookingIdAndStatus(int bookingID, String status) {
        String query = "UPDATE Booking\n"
                + "SET BookingStatus = ?\n"
                + "WHERE BookingID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, bookingID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public int CountBookingByAccountID(String accountID) {
        String query = "SELECT COUNT(*) AS NumberOfBookings\n"
                + "FROM Booking\n"
                + "WHERE AccountID = ?";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("NumberOfBookings");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return total;
    }

    public static void main(String[] args) {
        BookingDAO dao = new BookingDAO();
        int total = dao.CountBookingByAccountID("AC0006");
        System.out.println(total);
    }
}
