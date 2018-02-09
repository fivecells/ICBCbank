package com.bank.pojo.po;

import java.io.Serializable;

public class Metal implements Serializable{
    private Integer metalId;

    private String metalName;

    private Integer metalStatus;

    private Double buyPrice;

    private Double sellPrice;

    private Double priceAvg;

    private Double fluctuation;

    private Double fluPerDay;

    private Double fluPerYear;

    private Integer metalUserId;

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

    public Integer getMetalStatus() {
        return metalStatus;
    }

    public void setMetalStatus(Integer metalStatus) {
        this.metalStatus = metalStatus;
    }

    public Double getBuyPrice() {
        return buyPrice;
    }

    public void setBuyPrice(Double buyPrice) {
        this.buyPrice = buyPrice;
    }

    public Double getSellPrice() {
        return sellPrice;
    }

    public void setSellPrice(Double sellPrice) {
        this.sellPrice = sellPrice;
    }

    public Double getPriceAvg() {
        return priceAvg;
    }

    public void setPriceAvg(Double priceAvg) {
        this.priceAvg = priceAvg;
    }

    public Double getFluctuation() {
        return fluctuation;
    }

    public void setFluctuation(Double fluctuation) {
        this.fluctuation = fluctuation;
    }

    public Double getFluPerDay() {
        return fluPerDay;
    }

    public void setFluPerDay(Double fluPerDay) {
        this.fluPerDay = fluPerDay;
    }

    public Double getFluPerYear() {
        return fluPerYear;
    }

    public void setFluPerYear(Double fluPerYear) {
        this.fluPerYear = fluPerYear;
    }

    public Integer getMetalUserId() {
        return metalUserId;
    }

    public void setMetalUserId(Integer metalUserId) {
        this.metalUserId = metalUserId;
    }
}