package com.bank.pojo.po;

import java.io.Serializable;

public class MetalPoxy implements Serializable{
    private Integer metalId;

    private String metalName;

    private Double presentPrice;

    private Integer metalStatus;

    private Double fluctuation;

    private Long dealNumber;

    private Double openingPrice;

    private Double yesterdayPrice;

    private Double maxPrice;

    private Double minPrice;

    private Integer poxyUserId;

    public Integer getMetalId() {
        return metalId;
    }

    public void setMetalId(Integer metalId) {
        this.metalId = metalId;
    }

    public String getMetalName() {
        return metalName;
    }

    public void setMetalName(String metalName) {
        this.metalName = metalName == null ? null : metalName.trim();
    }

    public Double getPresentPrice() {
        return presentPrice;
    }

    public void setPresentPrice(Double presentPrice) {
        this.presentPrice = presentPrice;
    }

    public Integer getMetalStatus() {
        return metalStatus;
    }

    public void setMetalStatus(Integer metalStatus) {
        this.metalStatus = metalStatus;
    }

    public Double getFluctuation() {
        return fluctuation;
    }

    public void setFluctuation(Double fluctuation) {
        this.fluctuation = fluctuation;
    }

    public Long getDealNumber() {
        return dealNumber;
    }

    public void setDealNumber(Long dealNumber) {
        this.dealNumber = dealNumber;
    }

    public Double getOpeningPrice() {
        return openingPrice;
    }

    public void setOpeningPrice(Double openingPrice) {
        this.openingPrice = openingPrice;
    }

    public Double getYesterdayPrice() {
        return yesterdayPrice;
    }

    public void setYesterdayPrice(Double yesterdayPrice) {
        this.yesterdayPrice = yesterdayPrice;
    }

    public Double getMaxPrice() {
        return maxPrice;
    }

    public void setMaxPrice(Double maxPrice) {
        this.maxPrice = maxPrice;
    }

    public Double getMinPrice() {
        return minPrice;
    }

    public void setMinPrice(Double minPrice) {
        this.minPrice = minPrice;
    }

    public Integer getPoxyUserId() {
        return poxyUserId;
    }

    public void setPoxyUserId(Integer poxyUserId) {
        this.poxyUserId = poxyUserId;
    }
}