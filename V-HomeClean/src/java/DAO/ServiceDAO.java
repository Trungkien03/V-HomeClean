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
                + "WHERE s.CateID = c.CateID AND Status = 'true'";
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

    public ServiceDTO getServiceByID(String serviceID) {
        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName \n"
                + "FROM Service s, CateService c\n"
                + "WHERE s.CateID = c.CateID and ServiceID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, serviceID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new ServiceDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getInt(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getNString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public int CountService() {
        String query = "SELECT COUNT(*) AS total_count FROM Service;";
        int totalServices = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalServices = rs.getInt("total_count");
            }
        } catch (Exception e) {
        }
        return totalServices;
    }

    public List<ServiceDTO> pagingService(int index) {
        List<ServiceDTO> list = new ArrayList<>();

        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName \n"
                + "FROM Service s,CateService c\n"
                + "WHERE  s.CateID = c.CateID ORDER BY ServiceID OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 6);
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
            e.printStackTrace();
        }

        return list;

    }

    public int CountServiceByStatus(String status) {
        String query = "SELECT COUNT(*) AS total_count FROM Service WHERE Status = ?";
        int total = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            rs = ps.executeQuery();
            if (rs.next()) {
                total = rs.getInt("total_count");
            }
        } catch (Exception e) {
        }
        return total;
    }

    //lấy ra những service mà đang còn hoạt động
    public List<ServiceDTO> getAllServiceActive(String status) {
        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName\n"
                + "FROM Service s, CateService c\n"
                + "WHERE s.CateID = c.CateID AND s.Status = ?";
        List<ServiceDTO> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
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
            e.printStackTrace();
        }
        return list;
    }

    //update status service
    public void UpdateStatusServiceByID(String serviceID, String status) {
        String query = "UPDATE Service\n"
                + "SET Status = ?\n"
                + "WHERE ServiceID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setString(2, serviceID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //chỉnh sửa thông tin của service
    public void UpdateServiceByID(String serviceName, int price, String serviceDetail, int cateID, String image, String serviceID) {
        String query = "UPDATE Service\n"
                + "SET ServiceName = ?,\n"
                + "    Price = ?,\n"
                + "    ServiceDetail = ?,\n"
                + "    CateID = ?,\n"
                + "    Image = ?\n"
                + "WHERE ServiceID = ?;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, serviceName);
            ps.setInt(2, price);
            ps.setNString(3, serviceDetail);
            ps.setInt(4, cateID);
            ps.setString(5, image);
            ps.setString(6, serviceID);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    //tạo mới dịch vụ
    public void InsertNewService(String serviceName, int price, String serviceDetail, int cateID, String image, String status) {
        String query = "INSERT INTO Service (ServiceName, Price, ServiceDetail, CateID, Image, Status)\n"
                + "VALUES (?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, serviceName);
            ps.setInt(2, price);
            ps.setNString(3, serviceDetail);
            ps.setInt(4, cateID);
            ps.setString(5, image);
            ps.setString(6, status);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ServiceDTO GetServiceByName(String serviceName) {
        String query = "SELECT ServiceID, ServiceName, Price, ServiceDetail, Image, Status, CateName \n"
                + "FROM Service s, CateService c \n"
                + "WHERE s.CateID = c.CateID AND ServiceName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setNString(1, serviceName);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new ServiceDTO(rs.getString(1),
                        rs.getNString(2),
                        rs.getInt(3),
                        rs.getNString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getNString(7));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

   

    public static void main(String[] args) {
        
    }
}
