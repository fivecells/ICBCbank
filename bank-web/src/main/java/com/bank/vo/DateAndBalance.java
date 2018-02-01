package com.bank.vo;

import java.util.Date;
import java.util.Map;

public class DateAndBalance {
    private Integer uid;

    private Map<Long, Double> dateAndBalance;

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public Map<Long, Double> getDateAndBalance() {
        return dateAndBalance;
    }

    public void setDateAndBalance(Map<Long, Double> dateAndBalance) {
        this.dateAndBalance = dateAndBalance;
    }
}
