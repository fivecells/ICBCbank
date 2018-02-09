package com.bank.pojo.po;

import java.io.Serializable;
import java.util.Date;

public class SaveInfo implements Serializable{
    private Integer saveId;

    private Integer saveWaiterId;

    private Long saveCardId;

    private Double saveMoney;

    private Date saveTime;

    private String saveSummary;

    public Integer getSaveId() {
        return saveId;
    }

    public void setSaveId(Integer saveId) {
        this.saveId = saveId;
    }

    public Integer getSaveWaiterId() {
        return saveWaiterId;
    }

    public void setSaveWaiterId(Integer saveWaiterId) {
        this.saveWaiterId = saveWaiterId;
    }

    public Long getSaveCardId() {
        return saveCardId;
    }

    public void setSaveCardId(Long saveCardId) {
        this.saveCardId = saveCardId;
    }

    public Double getSaveMoney() {
        return saveMoney;
    }

    public void setSaveMoney(Double saveMoney) {
        this.saveMoney = saveMoney;
    }

    public Date getSaveTime() {
        return saveTime;
    }

    public void setSaveTime(Date saveTime) {
        this.saveTime = saveTime;
    }

    public String getSaveSummary() {
        return saveSummary;
    }

    public void setSaveSummary(String saveSummary) {
        this.saveSummary = saveSummary == null ? null : saveSummary.trim();
    }
}