package com.bank.vo;

import com.bank.po.Metal;

public class MetalPs extends Metal{
    private String buy;
    private String metalStatusShow;
    private String fluctuationShow;
    private String fluPerDayShow;
    private String fluPerYearShow;

    public String getBuy() {
        return buy;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }

    public String getMetalStatusShow() {
        return metalStatusShow;
    }

    public void setMetalStatusShow(String metalStatusShow) {
        this.metalStatusShow = metalStatusShow;
    }

    public String getFluctuationShow() {
        return fluctuationShow;
    }

    public void setFluctuationShow(String fluctuationShow) {
        this.fluctuationShow = fluctuationShow;
    }

    public String getFluPerDayShow() {
        return fluPerDayShow;
    }

    public void setFluPerDayShow(String fluPerDayShow) {
        this.fluPerDayShow = fluPerDayShow;
    }

    public String getFluPerYearShow() {
        return fluPerYearShow;
    }

    public void setFluPerYearShow(String fluPerYearShow) {
        this.fluPerYearShow = fluPerYearShow;
    }
}
