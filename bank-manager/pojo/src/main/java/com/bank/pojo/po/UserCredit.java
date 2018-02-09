package com.bank.pojo.po;

import java.io.Serializable;

public class UserCredit implements Serializable{
    private Integer creditId;

    private Long creditNumber;

    private Integer creditPassword;

    private Double creditBalance;

    private Integer creditStatus;

    private Long creditIntegral;

    private Integer creditUserId;

    public Integer getCreditId() {
        return creditId;
    }

    public void setCreditId(Integer creditId) {
        this.creditId = creditId;
    }

    public Long getCreditNumber() {
        return creditNumber;
    }

    public void setCreditNumber(Long creditNumber) {
        this.creditNumber = creditNumber;
    }

    public Integer getCreditPassword() {
        return creditPassword;
    }

    public void setCreditPassword(Integer creditPassword) {
        this.creditPassword = creditPassword;
    }

    public Double getCreditBalance() {
        return creditBalance;
    }

    public void setCreditBalance(Double creditBalance) {
        this.creditBalance = creditBalance;
    }

    public Integer getCreditStatus() {
        return creditStatus;
    }

    public void setCreditStatus(Integer creditStatus) {
        this.creditStatus = creditStatus;
    }

    public Long getCreditIntegral() {
        return creditIntegral;
    }

    public void setCreditIntegral(Long creditIntegral) {
        this.creditIntegral = creditIntegral;
    }

    public Integer getCreditUserId() {
        return creditUserId;
    }

    public void setCreditUserId(Integer creditUserId) {
        this.creditUserId = creditUserId;
    }
}