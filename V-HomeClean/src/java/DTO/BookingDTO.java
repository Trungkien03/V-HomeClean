package DTO;

public class BookingDTO {

    private String bookingID;
    private String accountID;
    private String bookingStatus;
    private String staffID;
    private String serviceID;
    private String bookingDetailID;
    private int totalPrice;
    private String bookingDate;
    private String bookingAddress;
    private String TypeOfService;
    private String message;

    public BookingDTO() {
    }

    public BookingDTO(String bookingID, String accountID, String bookingStatus, String staffID, String serviceID, String bookingDetailID, int totalPrice, String bookingDate, String bookingAddress, String TypeOfService, String message) {
        this.bookingID = bookingID;
        this.accountID = accountID;
        this.bookingStatus = bookingStatus;
        this.staffID = staffID;
        this.serviceID = serviceID;
        this.bookingDetailID = bookingDetailID;
        this.totalPrice = totalPrice;
        this.bookingDate = bookingDate;
        this.bookingAddress = bookingAddress;
        this.TypeOfService = TypeOfService;
        this.message = message;
    }

    public String getBookingID() {
        return bookingID;
    }

    public void setBookingID(String bookingID) {
        this.bookingID = bookingID;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getBookingStatus() {
        if (this.bookingStatus.equalsIgnoreCase("0")) {
            return "False";
        } else {
            return "True";
        }
    }

    public void setBookingStatus(String bookingStatus) {
        this.bookingStatus = bookingStatus;
    }

    public String getStaffID() {
        return staffID;
    }

    public void setStaffID(String staffID) {
        this.staffID = staffID;
    }

    public String getServiceID() {
        return serviceID;
    }

    public void setServiceID(String serviceID) {
        this.serviceID = serviceID;
    }

    public String getBookingDetailID() {
        return bookingDetailID;
    }

    public void setBookingDetailID(String bookingDetailID) {
        this.bookingDetailID = bookingDetailID;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(String bookingDate) {
        this.bookingDate = bookingDate;
    }

    public String getBookingAddress() {
        return bookingAddress;
    }

    public void setBookingAddress(String bookingAddress) {
        this.bookingAddress = bookingAddress;
    }

    public String getTypeOfService() {
        return TypeOfService;
    }

    public void setTypeOfService(String TypeOfService) {
        this.TypeOfService = TypeOfService;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
