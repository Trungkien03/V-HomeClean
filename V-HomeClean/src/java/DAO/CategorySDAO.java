/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.CategoryServiceDTO;
import DTO.ServiceDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Hieu Doan
 */
public class CategorySDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<CategoryServiceDTO> getAllCategory() {
        List<CategoryServiceDTO> list = new ArrayList<>();
        String query = "SELECT * FROM CateService";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new CategoryServiceDTO(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<ServiceDTO> getServiceByCateID(int cateID) {
    List<ServiceDTO> list = new ArrayList<>();
    String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName " +
                   "FROM Service s, CateService c " +
                   "WHERE s.CateID = c.CateID AND s.CateID = ?";
    try {
        conn = new DBContext().getConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, cateID);
        rs = ps.executeQuery();
        while (rs.next()) {
            list.add(new ServiceDTO(rs.getString("ServiceID"),
                    rs.getString("ServiceName"),
                    rs.getInt("Price"),
                    rs.getString("ServiceDetail"),
                    rs.getString("Image"),
                    rs.getString("Status"),
                    rs.getString("CateName")));
        }
    } catch (Exception e) {
        System.out.println(e);
    }
    return list;
}


    public static void main(String[] args) {
        CategorySDAO dao = new CategorySDAO();

        List<ServiceDTO> list = dao.getServiceByCateID(1);
        for (ServiceDTO serviceDTO : list) {
            System.out.println(serviceDTO);
        }
    }

}
