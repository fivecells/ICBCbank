package com.bank.pojo.po;

import java.io.Serializable;
import java.util.Date;

public class DrawInfo implements Serializable{
    private Integer drawId;

    private Integer drawWaiterId;

    private Long drawCardId;

    private Double drawMoney;

    private Date drawTime;

    private String drawSummary;

    public Integer getDrawId() {
        return drawId;
    }

    public void setDrawId(Integer drawId) {
        this.drawId = drawId;
    }

    public Integer getDrawWaiterId() {
        return drawWaiterId;
    }

    public void setDrawWaiterId(Integer drawWaiterId) {
        this.drawWaiterId = drawWaiterId;
    }

    public Long getDrawCardId() {
        return drawCardId;
    }

    public void setDrawCardId(Long drawCardId) {
        this.drawCardId = drawCardId;
    }

    public Double getDrawMoney() {
        return drawMoney;
    }

    public void setDrawMoney(Double drawMoney) {
        this.drawMoney = drawMoney;
    }

    public Date getDrawTime() {
        return drawTime;
    }

    public void setDrawTime(Date drawTime) {
        this.drawTime = drawTime;
    }

    public String getDrawSummary() {
        return drawSummary;
    }

    public void setDrawSummary(String drawSummary) {
        this.drawSummary = drawSummary == null ? null : drawSummary.trim();
    }
}