package com.kargo.model;

public class Address {
    private int addressId;
    private int cityId;
    private int districtId;
    private int neighborhoodId;
    private String fullAddress;
    private String cityName;
    private String districtName;
    private String neighborhoodName;
    
    public Address() {}
    
    public Address(int cityId, int districtId, int neighborhoodId, String fullAddress) {
        this.cityId = cityId;
        this.districtId = districtId;
        this.neighborhoodId = neighborhoodId;
        this.fullAddress = fullAddress;
    }
    
    public int getAddressId() {
        return addressId;
    }
    
    public void setAddressId(int addressId) {
        this.addressId = addressId;
    }
    
    public int getCityId() {
        return cityId;
    }
    
    public void setCityId(int cityId) {
        this.cityId = cityId;
    }
    
    public int getDistrictId() {
        return districtId;
    }
    
    public void setDistrictId(int districtId) {
        this.districtId = districtId;
    }
    
    public int getNeighborhoodId() {
        return neighborhoodId;
    }
    
    public void setNeighborhoodId(int neighborhoodId) {
        this.neighborhoodId = neighborhoodId;
    }
    
    public String getFullAddress() {
        return fullAddress;
    }
    
    public void setFullAddress(String fullAddress) {
        this.fullAddress = fullAddress;
    }
    
    public String getCityName() {
        return cityName;
    }
    
    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
    
    public String getDistrictName() {
        return districtName;
    }
    
    public void setDistrictName(String districtName) {
        this.districtName = districtName;
    }
    
    public String getNeighborhoodName() {
        return neighborhoodName;
    }
    
    public void setNeighborhoodName(String neighborhoodName) {
        this.neighborhoodName = neighborhoodName;
    }
}
