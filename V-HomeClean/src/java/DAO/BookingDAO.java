/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Trung Kien
 */
public class BookingDAO {
    
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void InsertBooking(String accountID, String status, String staffID, String serviceID, int totalPrice, String bookingDate, String bookingAddress, String typeOfService, String message) {
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
            int bookingID;
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
    }

    public static void main(String[] args) {
        BookingDAO dao = new BookingDAO();
        dao.InsertBooking("AC0002", "pending", "", "SE02", 1000000, "2023-06-29 22:46:00", "S1.01 || Vinhomes Golden River - TP. Hồ Chí Minh", "Định Kì Theo Tuần", "");
    }
}
