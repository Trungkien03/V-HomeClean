/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Asus
 */
public class UserDTO {
    private String accountID;
    private String email;
    private String password;
    private String fullName;
    private String address;
    private String phone;
    private int roleID;
    private String dateOfBirth;
    private String status;
    private String image;
    private double salary;

    public UserDTO() {
    }

    public UserDTO(String accountID, String email, String password, String fullName, String address, String phone, int roleID, String dateOfBirth, String status, String image, double salary) {
        this.accountID = accountID;
        this.email = email;
        this.password = password;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
        this.roleID = roleID;
        this.dateOfBirth = dateOfBirth;
        this.status = status;
        this.image = image;
        this.salary = salary;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getStatus() {
        if(this.status.equalsIgnoreCase("0")){
            return "False";
        }else{
            return "True";
        }
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "UserDTO{" + "accountID=" + accountID + ", email=" + email + ", password=" + password + ", fullName=" + fullName + ", address=" + address + ", phone=" + phone + ", roleID=" + roleID + ", dateOfBirth=" + dateOfBirth + ", status=" + status + ", image=" + image + ", salary=" + salary + '}';
    }
    
    
    
    
    
    
}
