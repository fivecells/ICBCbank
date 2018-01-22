package com.bank.po;

public class FundPer {
    private Long fundCode;

    private Double threePer;

    private String fundName;

    public String getFundName() {
        return fundName;
    }

    public void setFundName(String fundName) {
        this.fundName = fundName;
    }

    public Long getFundCode() {
        return fundCode;
    }

    public void setFundCode(Long fundCode) {
        this.fundCode = fundCode;
    }

    public Double getThreePer() {
        return threePer;
    }

    public void setThreePer(Double threePer) {
        this.threePer = threePer;
    }
}