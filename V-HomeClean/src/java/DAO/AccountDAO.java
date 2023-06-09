/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Context.DBContext;
import DTO.AccountDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Asus
 */
public class AccountDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //created by Kien
    public AccountDTO Login(String email, String pass) {
        String query = "SELECT * \n"
                + "FROM Account \n"
                + "WHERE Email = ? AND Password = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getNString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //lấy accounts bằng roleID - created by Kien
    public List<AccountDTO> GetAccountsByRoleID(int roleID) {
        List<AccountDTO> list = new ArrayList<>();
        String query = "SELECT * FROM Account WHERE RoleID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, roleID);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getNString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    //dùng để check duplicate Email - created by Kien
    public AccountDTO CheckDuplicatedEmail(String email) {
        String query = "SELECT * \n"
                + "FROM Account \n"
                + "WHERE Email = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //dùng để check duplicate SDT - create by Kien
    public AccountDTO CheckDuplicatePhone(String sdt) {
        String query = "SELECT * FROM Account WHERE Phone = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sdt);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12));
            }
        } catch (Exception e) {
        }
        return null;
    }

    //By Kien
    public boolean isValidEmail(String email) {
        // Sử dụng biểu thức chính quy để kiểm tra định dạng email
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
        Pattern pattern = Pattern.compile(emailRegex);
        Matcher matcher = pattern.matcher(email);
        return matcher.matches();
    }

    //phương thức kiểm tra hợp lệ - by Kien
    public boolean isValidPhoneNumber(String phone) {
        // Loại bỏ các ký tự không phải số
        String cleanedNumber = phone.replaceAll("[^0-9]", "");

        // Kiểm tra độ dài và định dạng hợp lệ cho số điện thoại
        if (cleanedNumber.length() >= 10 && cleanedNumber.length() <= 15) {
            // Thỏa mãn yêu cầu định dạng số điện thoại
            return true;
        } else {
            return false;
        }
    }

    //Register Function by Kien
    public void Register(String email, String password, String fullName, String address, String phone, int roleID, String dateOfBirth, String gender, String status, String image, double salary) {
        String query = "INSERT INTO Account\n"
                + "VALUES ('1', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setNString(3, fullName);
            ps.setNString(4, address);
            ps.setString(5, phone);
            ps.setInt(6, roleID);
            ps.setString(7, gender);
            ps.setString(8, dateOfBirth);
            ps.setString(9, status);
            ps.setString(10, image);
            ps.setDouble(11, salary);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    //CheckAccount để lấy thông tin từ reset pass - By Hieu
    public AccountDTO checkAccount(String email) throws ClassNotFoundException {

        try {
            conn = new DBContext().getConnection();
            if (conn != null) {
                String query = "SELECT * FROM Account WHERE email = ?";
                ps = conn.prepareStatement(query);
                ps.setString(1, email);
                rs = ps.executeQuery();

                while (rs.next()) {
                    return new AccountDTO(rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getNString(4),
                            rs.getNString(5),
                            rs.getString(6),
                            rs.getInt(7),
                            rs.getString(8),
                            rs.getString(9),
                            rs.getString(10),
                            rs.getString(11),
                            rs.getDouble(12));
                }
            }
        } catch (SQLException e) {
        }

        return null;
    }

    //By Hieu
    private static final String UPDATE = "UPDATE Account SET Password = ? WHERE email=?";

    public boolean updateAccount(AccountDTO account) throws SQLException {

        boolean checkUpdate = false;
        Connection conn = null;
        PreparedStatement ps = null;
        try {
            conn = new DBContext().getConnection();
            if (conn != null) {
                ps = conn.prepareStatement(UPDATE);
                ps.setString(1, account.getPassword());
                ps.setString(2, account.getEmail());

                checkUpdate = ps.executeUpdate() > 0 ? true : false;
            }
        } catch (Exception e) {
        } finally {
            if (ps != null) {
                ps.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return checkUpdate;
    }

    public void UpdateAccountProfile(String email, String password, String fullName, String address, String phone, int roleID, String gender, String dateOfBirth, String Image, double salary, String accountID) {
        String query = "UPDATE Account\n"
                + "SET \n"
                + "  Email = ?,\n" //1
                + "  Password = ?,\n" //2
                + "  FullName = ?,\n" //3
                + "  Address = ?,\n" //4
                + "  Phone = ?,\n" //5
                + "  RoleID = ?,\n" //6
                + "  Gender = ?,\n" //7  
                + "  DateOfBirth = ?,\n" //8 
                + "  Image = ?,\n" //9
                + "  Salary = ?\n" //10 
                + "WHERE AccountID = ?;"; //11 
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setNString(2, password);
            ps.setNString(3, fullName);
            ps.setNString(4, address);
            ps.setString(5, phone);
            ps.setInt(6, roleID);
            ps.setString(7, gender);
            ps.setString(8, dateOfBirth);
            ps.setString(9, Image);
            ps.setDouble(10, salary);
            ps.setString(11, accountID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public int CountAccountByRoleID(int RoleID) {
        String query = "SELECT COUNT(AccountID) AS TotalCount FROM Account WHERE RoleID = ?;";
        int totalCount = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, RoleID);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalCount = rs.getInt("TotalCount");
            }
        } catch (Exception e) {
        }
        return totalCount;
    }

    //đếm Account hoạt động
    public int CountAccountByRoldIDandStatus(int roleID, String status) {
        String query = "SELECT COUNT(AccountID) AS TotalCount FROM Account WHERE RoleID = ? AND status = ?";
        int totalCount = 0;
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, roleID);
            ps.setString(2, status);
            rs = ps.executeQuery();
            if (rs.next()) {
                totalCount = rs.getInt("TotalCount");
            }
        } catch (Exception e) {
        }
        return totalCount;
    }

    public AccountDTO GetAccountByAccountID(String accountID) {
        String query = "SELECT * FROM Account WHERE AccountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, accountID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getNString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public List<AccountDTO> GetAccountByRoleIDAndStatus(int roleID, String status) {
        List<AccountDTO> list = new ArrayList<>();
        String query = "SELECT * FROM Account WHERE RoleID = ? and status = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, roleID);
            ps.setString(2, status);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new AccountDTO(rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getNString(4),
                        rs.getNString(5),
                        rs.getString(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getDouble(12)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void setStatusAccount(String accountID, String status) {
        String query = "UPDATE Account\n"
                + "SET Status = ?\n"
                + "WHERE AccountID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setString(2, accountID);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        AccountDAO dao = new AccountDAO();
        AccountDTO a = dao.GetAccountByAccountID("AC0001");
        System.out.println(a.toString());
    }
}
