/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.ServiceDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Trung Kien
 */
public class ServiceDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<ServiceDTO> getAllService() {
        List<ServiceDTO> list = new ArrayList<>();
        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName \n"
                + "FROM Service s, CateService c \n"
                + "WHERE s.CateID = c.CateID";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getInt(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getNString(7)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    

    public static void main(String[] args) {
       
    }
}
