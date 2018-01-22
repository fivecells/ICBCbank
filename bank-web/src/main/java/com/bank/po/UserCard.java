package com.bank.po;

import java.util.Date;

public class UserCard {
    private Long userCardId;

    private Integer userCardPassword;

    private Double userCardAmount;

    private Integer userCardStatus;

    private String userCardSubbranch;

    private Date userCardCreatetime;

    private Integer userId;

    public Long getUserCardId() {
        return userCardId;
    }

    public void setUserCardId(Long userCardId) {
        this.userCardId = userCardId;
    }

    public Integer getUserCardPassword() {
        return userCardPassword;
    }

    public void setUserCardPassword(Integer userCardPassword) {
        this.userCardPassword = userCardPassword;
    }

    public Double getUserCardAmount() {
        return userCardAmount;
    }

    public void setUserCardAmount(Double userCardAmount) {
        this.userCardAmount = userCardAmount;
    }

    public Integer getUserCardStatus() {
        return userCardStatus;
    }

    public void setUserCardStatus(Integer userCardStatus) {
        this.userCardStatus = userCardStatus;
    }

    public String getUserCardSubbranch() {
        return userCardSubbranch;
    }

    public void setUserCardSubbranch(String userCardSubbranch) {
        this.userCardSubbranch = userCardSubbranch == null ? null : userCardSubbranch.trim();
    }

    public Date getUserCardCreatetime() {
        return userCardCreatetime;
    }

    public void setUserCardCreatetime(Date userCardCreatetime) {
        this.userCardCreatetime = userCardCreatetime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}