/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Hieu Doan
 */
public class CommentDTO {

    private int commentID;
    private String message;
    private String time;
    private String accountID;
    private String blogID;
    private String fullName;

    public CommentDTO() {
    }

    public CommentDTO(int commentID, String message, String time, String accountID, String blogID, String fullName) {
        this.commentID = commentID;
        this.message = message;
        this.time = time;
        this.accountID = accountID;
        this.blogID = blogID;
        this.fullName = fullName;
    }

    public int getComment() {
        return commentID;
    }

    public void setComment(int commentID) {
        this.commentID = commentID;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getBlogID() {
        return blogID;
    }

    public void setBlogID(String blogID) {
        this.blogID = blogID;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    @Override
    public String toString() {
        return "CommentDTO{" + "commentID=" + commentID + ", message=" + message + ", time=" + time + ", accountID=" + accountID + ", blogID=" + blogID + ", fullName=" + fullName + '}';
    }

}
