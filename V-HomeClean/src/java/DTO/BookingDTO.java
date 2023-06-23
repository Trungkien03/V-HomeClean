package DTO;

public class BookingDTO {

    private String bookingID;
    private String accountID;
    private String bookingStatus;
    private String staffID;
    private String serviceID;
    private String serviceName;
    private String bookingDetailID;
    private int totalPrice;
    private String bookingDate;
    private String bookingAddress;
    private String typeOfService;
    private String message;

    public BookingDTO() {
    }

    public BookingDTO(String bookingID, String accountID, String bookingStatus, String staffID, String serviceID, String serviceName, String bookingDetailID, int totalPrice, String bookingDate, String bookingAddress, String typeOfService, String message) {
        this.bookingID = bookingID;
        this.accountID = accountID;
        this.bookingStatus = bookingStatus;
        this.staffID = staffID;
        this.serviceID = serviceID;
        this.serviceName = serviceName;
        this.bookingDetailID = bookingDetailID;
        this.totalPrice = totalPrice;
        this.bookingDate = bookingDate;
        this.bookingAddress = bookingAddress;
        this.typeOfService = typeOfService;
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
        return bookingStatus;
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

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
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
        return typeOfService;
    }

    public void setTypeOfService(String typeOfService) {
        this.typeOfService = typeOfService;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public String toString() {
        return "BookingDTO{" + "bookingID=" + bookingID + ", accountID=" + accountID + ", bookingStatus=" + bookingStatus + ", staffID=" + staffID + ", serviceID=" + serviceID + ", serviceName=" + serviceName + ", bookingDetailID=" + bookingDetailID + ", totalPrice=" + totalPrice + ", bookingDate=" + bookingDate + ", bookingAddress=" + bookingAddress + ", TypeOfService=" + typeOfService + ", message=" + message + '}';
    }

    

    
}
