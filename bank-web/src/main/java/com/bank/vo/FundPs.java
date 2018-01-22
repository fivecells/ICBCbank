package com.bank.vo;

import com.bank.po.Fund;

public class FundPs extends Fund{
    private String buy;
    private String watch;

    public String getBuy() {
        return buy;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }

    public String getWatch() {
        return watch;
    }

    public void setWatch(String watch) {
        this.watch = watch;
    }

}
