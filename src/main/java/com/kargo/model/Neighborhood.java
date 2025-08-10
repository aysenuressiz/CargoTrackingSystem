package com.kargo.model;

public class Neighborhood {
    private int neighborhoodId;
    private String neighborhoodName;
    private int districtId;
    private int postalCode;
    
    // Constructors
    public Neighborhood() {}
    
    public Neighborhood(int neighborhoodId, String neighborhoodName, int districtId, int postalCode) {
        this.neighborhoodId = neighborhoodId;
        this.neighborhoodName = neighborhoodName;
        this.districtId = districtId;
        this.postalCode = postalCode;
    }
    
    // Getters and Setters
    public int getNeighborhoodId() {
        return neighborhoodId;
    }
    
    public void setNeighborhoodId(int neighborhoodId) {
        this.neighborhoodId = neighborhoodId;
    }
    
    public String getNeighborhoodName() {
        return neighborhoodName;
    }
    
    public void setNeighborhoodName(String neighborhoodName) {
        this.neighborhoodName = neighborhoodName;
    }
    
    public int getDistrictId() {
        return districtId;
    }
    
    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }
    
    public int getPostalCode() {
        return postalCode;
    }
    
    public void setPostalCode(int postalCode) {
        this.postalCode = postalCode;
    }
    
    @Override
    public String toString() {
        return neighborhoodName;
    }
}
