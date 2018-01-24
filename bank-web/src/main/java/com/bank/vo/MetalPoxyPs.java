package com.bank.vo;

import com.bank.po.MetalPoxy;

public class MetalPoxyPs extends MetalPoxy{

    private String metalStatusShow;
    private String fluctuationShow;
    private String buy;

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

    public String getBuy() {
        return buy;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }
}
