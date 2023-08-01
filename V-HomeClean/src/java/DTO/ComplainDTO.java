/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author tuong
 */
public class ComplainDTO {
    
    private String complainID;
    private String date;
    private String detail;
    private String accountID;
    private String bookingID;
    private String fullName;
    private String image;

    public ComplainDTO() {
    }

    public ComplainDTO(String complainID, String date, String detail, String accountID, String bookingID, String fullName, String image) {
        this.complainID = complainID;
        this.date = date;
        this.detail = detail;
        this.accountID = accountID;
        this.bookingID = bookingID;
        this.fullName = fullName;
        this.image = image;
    }

    public String getComplainID() {
        return complainID;
    }

    public void setComplainID(String complainID) {
        this.complainID = complainID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "ComplainDTO{" + "complainID=" + complainID + ", date=" + date + ", Detail=" + detail + ", accountID=" + accountID + ", bookingID=" + bookingID + ", fullName=" + fullName + ", image=" + image + '}';
    }
    
    
}



