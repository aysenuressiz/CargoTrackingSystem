package com.kargo.model;

import java.sql.Timestamp;

public class CargoStatus {
    private int statusId;
    private int cargoId;
    private int statusTypeId;
    private int updatedById;
    private Timestamp updatedDate;
    private String statusName;
    private String updatedByName;
    
    public CargoStatus() {}
    
    public CargoStatus(int cargoId, int statusTypeId, int updatedById) {
        this.cargoId = cargoId;
        this.statusTypeId = statusTypeId;
        this.updatedById = updatedById;
    }
    
    public int getStatusId() {
        return statusId;
    }
    
    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }
    
    public int getCargoId() {
        return cargoId;
    }
    
    public void setCargoId(int cargoId) {
        this.cargoId = cargoId;
    }
    
    public int getStatusTypeId() {
        return statusTypeId;
    }
    
    public void setStatusTypeId(int statusTypeId) {
        this.statusTypeId = statusTypeId;
    }
    
    public int getUpdatedById() {
        return updatedById;
    }
    
    public void setUpdatedById(int updatedById) {
        this.updatedById = updatedById;
    }
    
    public Timestamp getUpdatedDate() {
        return updatedDate;
    }
    
    public void setUpdatedDate(Timestamp updatedDate) {
        this.updatedDate = updatedDate;
    }
    
    public String getStatusName() {
        return statusName;
    }
    
    public void setStatusName(String statusName) {
        this.statusName = statusName;
    }
    
    public String getUpdatedByName() {
        return updatedByName;
    }
    
    public void setUpdatedByName(String updatedByName) {
        this.updatedByName = updatedByName;
    }
}
