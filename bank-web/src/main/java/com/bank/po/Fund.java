package com.bank.po;

public class Fund {
    private Integer fundId;

    private Long fundCode;

    private String fundName;

    private Integer currencyType;

    private Integer fundType;

    private Integer fundStyle;

    private String issueDate;

    private Double unitPrice;

    private Integer fundUserId;

    public Integer getFundId() {
        return fundId;
    }

    public void setFundId(Integer fundId) {
        this.fundId = fundId;
    }

    public Long getFundCode() {
        return fundCode;
    }

    public void setFundCode(Long fundCode) {
        this.fundCode = fundCode;
    }

    public String getFundName() {
        return fundName;
    }

    public void setFundName(String fundName) {
        this.fundName = fundName == null ? null : fundName.trim();
    }

    public Integer getCurrencyType() {
        return currencyType;
    }

    public void setCurrencyType(Integer currencyType) {
        this.currencyType = currencyType;
    }

    public Integer getFundType() {
        return fundType;
    }

    public void setFundType(Integer fundType) {
        this.fundType = fundType;
    }

    public Integer getFundStyle() {
        return fundStyle;
    }

    public void setFundStyle(Integer fundStyle) {
        this.fundStyle = fundStyle;
    }

    public String getIssueDate() {
        return issueDate;
    }

    public void setIssueDate(String issueDate) {
        this.issueDate = issueDate == null ? null : issueDate.trim();
    }

    public Double getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Double unitPrice) {
        this.unitPrice = unitPrice;
    }

    public Integer getFundUserId() {
        return fundUserId;
    }

    public void setFundUserId(Integer fundUserId) {
        this.fundUserId = fundUserId;
    }
}