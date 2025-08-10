package com.kargo.model;

public class District {
    private int districtId;
    private String districtName;
    private int cityId;
    
    // Constructors
    public District() {}
    
    public District(int districtId, String districtName, int cityId) {
        this.districtId = districtId;
        this.districtName = districtName;
        this.cityId = cityId;
    }
    
    // Getters and Setters
    public int getDistrictId() {
        return districtId;
    }
    
    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }
    
    public String getDistrictName() {
        return districtName;
    }
    
    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }
    
    public int getCityId() {
        return cityId;
    }
    
    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
    
    @Override
    public String toString() {
        return districtName;
    }
}
