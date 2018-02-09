package com.bank.pojo.vo;

import com.bank.pojo.po.Fund;

import java.io.Serializable;

public class FundPs extends Fund implements Serializable{
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
