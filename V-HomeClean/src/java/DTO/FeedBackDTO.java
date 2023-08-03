/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

public class FeedBackDTO {

    private String feedBackID;
    private String date;
    private String feedbackDetail;
    private double rating;
    private String accountID;
    private String bookingID;
    private String fullName;
    private String image;

    public FeedBackDTO() {
    }

    public FeedBackDTO(String feedBackID, String date, String feedbackDetail, double rating, String accountID, String bookingID, String fullName, String image) {
        this.feedBackID = feedBackID;
        this.date = date;
        this.feedbackDetail = feedbackDetail;
        this.rating = rating;
        this.accountID = accountID;
        this.bookingID = bookingID;
        this.fullName = fullName;
        this.image = image;
    }

    public String getFeedBackID() {
        return feedBackID;
    }

    public void setFeedBackID(String feedBackID) {
        this.feedBackID = feedBackID;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getFeedbackDetail() {
        return feedbackDetail;
    }

    public void setFeedbackDetail(String feedbackDetail) {
        this.feedbackDetail = feedbackDetail;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
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
        return "FeedBackDTO{" + "feedBackID=" + feedBackID + ", date=" + date + ", feedbackDetail=" + feedbackDetail + ", rating=" + rating + ", accountID=" + accountID + ", bookingID=" + bookingID + ", fullName=" + fullName + ", image=" + image + '}';
    }
    
    

}
