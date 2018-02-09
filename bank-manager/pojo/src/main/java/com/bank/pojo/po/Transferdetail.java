package com.bank.pojo.po;

import java.io.Serializable;
import java.util.Date;

public class Transferdetail implements Serializable{
    private Integer id;

    private String acceptName;

    private Integer acceptAccount;

    private String acceptBank;

    private Double money;

    private Date createtime;

    private Integer payAccount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAcceptName() {
        return acceptName;
    }

    public void setAcceptName(String acceptName) {
        this.acceptName = acceptName == null ? null : acceptName.trim();
    }

    public Integer getAcceptAccount() {
        return acceptAccount;
    }

    public void setAcceptAccount(Integer acceptAccount) {
        this.acceptAccount = acceptAccount;
    }

    public String getAcceptBank() {
        return acceptBank;
    }

    public void setAcceptBank(String acceptBank) {
        this.acceptBank = acceptBank == null ? null : acceptBank.trim();
    }

    public Double getMoney() {
        return money;
    }

    public void setMoney(Double money) {
        this.money = money;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getPayAccount() {
        return payAccount;
    }

    public void setPayAccount(Integer payAccount) {
        this.payAccount = payAccount;
    }
}