/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.ComplainDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author tuong
 */
public class ComplainDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void InsertComplain(String detail, String accountID, String bookingID) {
        String query = "INSERT INTO Complain (Date, Complain_Text, AccountID, BookingID)\n"
                + "VALUES\n"
                + "(GETDATE(), ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, detail);
          
            ps.setString(2, accountID);
            ps.setString(3, bookingID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public List<ComplainDTO> getListComplain(){
        String query = "SELECT ComplainID, Date, Complain_Text, f.AccountID, BookingID, a.FullName, a.Image\n"
                + "FROM Complain f\n"
                + "JOIN Account a ON f.AccountID = a.AccountID;";
        List<ComplainDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ComplainDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getNString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7)));
            }
        } catch (Exception e) {
             e.printStackTrace();
        }
        return list;
    }
    
    public static void main(String[] args) {
        ComplainDAO dao = new ComplainDAO();
        List<ComplainDTO> list = dao.getListComplain();
        for (ComplainDTO c : list) {
            System.out.println(c);
            
        }
    }
}
