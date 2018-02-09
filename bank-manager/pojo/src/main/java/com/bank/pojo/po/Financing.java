package com.bank.pojo.po;

import java.io.Serializable;

public class Financing implements Serializable{
    private Integer financingId;

    private String financingName;

    private Double incomePer;

    private Double beginPrice;

    private Integer timeLimit;

    private Integer riskLevel;

    private Integer financingUserId;

    public Integer getFinancingId() {
        return financingId;
    }

    public void setFinancingId(Integer financingId) {
        this.financingId = financingId;
    }

    public String getFinancingName() {
        return financingName;
    }

    public void setFinancingName(String financingName) {
        this.financingName = financingName == null ? null : financingName.trim();
    }

    public Double getIncomePer() {
        return incomePer;
    }

    public void setIncomePer(Double incomePer) {
        this.incomePer = incomePer;
    }

    public Double getBeginPrice() {
        return beginPrice;
    }

    public void setBeginPrice(Double beginPrice) {
        this.beginPrice = beginPrice;
    }

    public Integer getTimeLimit() {
        return timeLimit;
    }

    public void setTimeLimit(Integer timeLimit) {
        this.timeLimit = timeLimit;
    }

    public Integer getRiskLevel() {
        return riskLevel;
    }

    public void setRiskLevel(Integer riskLevel) {
        this.riskLevel = riskLevel;
    }

    public Integer getFinancingUserId() {
        return financingUserId;
    }

    public void setFinancingUserId(Integer financingUserId) {
        this.financingUserId = financingUserId;
    }
}