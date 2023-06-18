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
public class BlogDTO {

    private String blogID;
    private String title;
    private String subTitle;
    private String content;
    private String accountID;
    private String time;
    private String image;
    private String cateBlogName;
    private int blogCateID;

    public BlogDTO() {
    }

    public BlogDTO(String blogID, String title, String subTitle, String content, String accountID, String time, String image, String cateBlogName, int blogCateID) {
        this.blogID = blogID;
        this.title = title;
        this.subTitle = subTitle;
        this.content = content;
        this.accountID = accountID;
        this.time = time;
        this.image = image;
        this.cateBlogName = cateBlogName;
        this.blogCateID = blogCateID;
    }

    public String getBlogID() {
        return blogID;
    }

    public void setBlogID(String blogID) {
        this.blogID = blogID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubTitle() {
        return subTitle;
    }

    public void setSubTitle(String subTitle) {
        this.subTitle = subTitle;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getAccountID() {
        return accountID;
    }

    public void setAccountID(String accountID) {
        this.accountID = accountID;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCateBlogName() {
        return cateBlogName;
    }

    public void setCateBlogName(String cateBlogName) {
        this.cateBlogName = cateBlogName;
    }

    public int getBlogCateID() {
        return blogCateID;
    }

    public void setBlogCateID(int blogCateID) {
        this.blogCateID = blogCateID;
    }

    @Override
    public String toString() {
        return "BlogDTO{" + "blogID=" + blogID + ", title=" + title + ", subTitle=" + subTitle + ", content=" + content + ", accountID=" + accountID + ", time=" + time + ", image=" + image + ", cateBlogName=" + cateBlogName + ", blogCateID=" + blogCateID + '}';
    }



    
}
