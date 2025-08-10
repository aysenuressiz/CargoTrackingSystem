package com.kargo.model;

import java.math.BigDecimal;
import java.util.Date;

public class Cargo {
    private int cargoId;
    private String trackingNo;
    private int senderUserId;
    private int receiverUserId;
    private BigDecimal weight;
    private String description;
    private String contentDescription;
    private Date shippingDate;
    private Date deliveryDate;
    
    // Additional fields for display
    private String senderName;
    private String receiverName;
    private String senderAddress;
    private String receiverAddress;
    private String currentStatus;
    private String currentLocation;
    private Integer courierUserId; // Kurye atama için
    
    // Constructors
    public Cargo() {}
    
    public Cargo(String trackingNo, int senderUserId, int receiverUserId, 
                 BigDecimal weight, String description, String contentDescription) {
        this.trackingNo = trackingNo;
        this.senderUserId = senderUserId;
        this.receiverUserId = receiverUserId;
        this.weight = weight;
        this.description = description;
        this.contentDescription = contentDescription;
    }
    
    // Getters and Setters
    public int getCargoId() {
        return cargoId;
    }
    
    public void setCargoId(int cargoId) {
        this.cargoId = cargoId;
    }
    
    public String getTrackingNo() {
        return trackingNo;
    }
    
    public void setTrackingNo(String trackingNo) {
        this.trackingNo = trackingNo;
    }
    
    public int getSenderUserId() {
        return senderUserId;
    }
    
    public void setSenderUserId(int senderUserId) {
        this.senderUserId = senderUserId;
    }
    
    public int getReceiverUserId() {
        return receiverUserId;
    }
    
    public void setReceiverUserId(int receiverUserId) {
        this.receiverUserId = receiverUserId;
    }
    
    public BigDecimal getWeight() {
        return weight;
    }
    
    public void setWeight(BigDecimal weight) {
        this.weight = weight;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getContentDescription() {
        return contentDescription;
    }
    
    public void setContentDescription(String contentDescription) {
        this.contentDescription = contentDescription;
    }
    
    public Date getShippingDate() {
        return shippingDate;
    }
    
    public void setShippingDate(Date shippingDate) {
        this.shippingDate = shippingDate;
    }
    
    public Date getDeliveryDate() {
        return deliveryDate;
    }
    
    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }
    
    public String getSenderName() {
        return senderName;
    }
    
    public void setSenderName(String senderName) {
        this.senderName = senderName;
    }
    
    public String getReceiverName() {
        return receiverName;
    }
    
    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }
    
    public String getSenderAddress() {
        return senderAddress;
    }
    
    public void setSenderAddress(String senderAddress) {
        this.senderAddress = senderAddress;
    }
    
    public String getReceiverAddress() {
        return receiverAddress;
    }
    
    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }
    
    public String getCurrentStatus() {
        return currentStatus;
    }
    
    public void setCurrentStatus(String currentStatus) {
        this.currentStatus = currentStatus;
    }
    
    public String getCurrentLocation() {
        return currentLocation;
    }
    
    public void setCurrentLocation(String currentLocation) {
        this.currentLocation = currentLocation;
    }
    
    public Integer getCourierUserId() {
        return courierUserId;
    }
    
    public void setCourierUserId(Integer courierUserId) {
        this.courierUserId = courierUserId;
    }
}