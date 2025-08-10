package com.kargo.model;

public class Status {
    private int statusTypeId;
    private String statusName;
    
    public Status() {}
    
    public Status(int statusTypeId, String statusName) {
        this.statusTypeId = statusTypeId;
        this.statusName = statusName;
    }
    
    public int getStatusTypeId() {
        return statusTypeId;
    }
    
    public void setStatusTypeId(int statusTypeId) {
        this.statusTypeId = statusTypeId;
    }
    
    public String getStatusName() {
        return statusName;
    }
    
    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
    
    @Override
    public String toString() {
        return "Status{" +
                "statusTypeId=" + statusTypeId +
                ", statusName='" + statusName + '\'' +
                '}';
    }
}