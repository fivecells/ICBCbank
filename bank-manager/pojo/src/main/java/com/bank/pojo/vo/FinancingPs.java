package com.bank.pojo.vo;

import com.bank.pojo.po.Financing;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class FinancingPs extends Financing implements Serializable{
    private String beginPriceShow;
    @DateTimeFormat(pattern = "yyyyMMdd")
    private Date dateShow;

    public String getBeginPriceShow() {
        return beginPriceShow;
    }

    public void setBeginPriceShow(String beginPriceShow) {
        this.beginPriceShow = beginPriceShow;
    }

    public Date getDateShow() {
        return dateShow;
    }

    public void setDateShow(Date dateShow) {
        this.dateShow = dateShow;
    }
}
