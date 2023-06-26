/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.mail.internet.ParseException;

public class NotificationDTO {

    private String notificationID;
    private String accountID;
    private String bookingID;
    private String detail;
    private String createAt;
    private String status;
    private String typeNoti;

    public NotificationDTO() {
    }

    public NotificationDTO(String notificationID, String accountID, String bookingID, String detail, String createAt, String status, String typeNoti) {
        this.notificationID = notificationID;
        this.accountID = accountID;
        this.bookingID = bookingID;
        this.detail = detail;
        this.createAt = createAt;
        this.status = status;
        this.typeNoti = typeNoti;
    }

    

    public String getNotificationID() {
        return notificationID;
    }

    public void setNotificationID(String notificationID) {
        this.notificationID = notificationID;
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

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public String getStatus() {
        if (this.status.equalsIgnoreCase("0")) {
            return "False";
        } else {
            return "True";
        }
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int calculateMinutesFromNow() throws java.text.ParseException {
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date currentDate = new Date(); // Thời điểm hiện tại
        Date createAtDate = format.parse(createAt); // Chuyển đổi chuỗi createAt thành đối tượng Date
        long diffInMillis = currentDate.getTime() - createAtDate.getTime(); // Tính khoảng thời gian (đơn vị: milliseconds)
        return (int) (diffInMillis / (1000 * 60)); // Chuyển đổi milliseconds thành phút
    }

    public String getTypeNoti() {
        return typeNoti;
    }

    public void setTypeNoti(String typeNoti) {
        this.typeNoti = typeNoti;
    }

    
    
    @Override
    public String toString() {
        return "NotificationDTO{" + "notificationID=" + notificationID + ", accountID=" + accountID + ", bookingID=" + bookingID + ", detail=" + detail + ", createAt=" + createAt + ", status=" + status + '}';
    }

}
