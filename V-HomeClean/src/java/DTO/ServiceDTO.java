/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author Trung Kien
 */
public class ServiceDTO {
    private String serviceID;
    private String serviceName;
    private int price;
    private String serviceDetail;
    private String image;
    private String status;
    private String cateServiceName;

    public ServiceDTO() {
    }

    public ServiceDTO(String serviceID, String serviceName, int price, String serviceDetail, String image, String status, String cateServiceName) {
        this.serviceID = serviceID;
        this.serviceName = serviceName;
        this.price = price;
        this.serviceDetail = serviceDetail;
        this.image = image;
        this.status = status;
        this.cateServiceName = cateServiceName;
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

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getServiceDetail() {
        return serviceDetail;
    }

    public void setServiceDetail(String serviceDetail) {
        this.serviceDetail = serviceDetail;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
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

    public String getCateServiceName() {
        return cateServiceName;
    }

    public void setCateServiceName(String cateServiceName) {
        this.cateServiceName = cateServiceName;
    }

    @Override
    public String toString() {
        return "ServiceDTO{" + "serviceID=" + serviceID + ", serviceName=" + serviceName + ", price=" + price + ", serviceDetail=" + serviceDetail + ", image=" + image + ", status=" + status + ", cateServiceName=" + cateServiceName + '}';
    }
    
    
}
