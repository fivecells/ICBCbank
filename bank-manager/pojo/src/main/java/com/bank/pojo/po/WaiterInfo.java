package com.bank.pojo.po;

import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

public class WaiterInfo implements Serializable{
    private Integer waiterId;

    private String waiterUsername;

    private String waiterPassword;

    private String waiterRealname;

    private String waiterIdentity;

    private String waiterPhone;

    private Integer waiterStatus;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date waiterHiredate;

    private String waiterEmail;

    public Integer getWaiterId() {
        return waiterId;
    }

    public void setWaiterId(Integer waiterId) {
        this.waiterId = waiterId;
    }

    public String getWaiterUsername() {
        return waiterUsername;
    }

    public void setWaiterUsername(String waiterUsername) {
        this.waiterUsername = waiterUsername == null ? null : waiterUsername.trim();
    }

    public String getWaiterPassword() {
        return waiterPassword;
    }

    public void setWaiterPassword(String waiterPassword) {
        this.waiterPassword = waiterPassword == null ? null : waiterPassword.trim();
    }

    public String getWaiterRealname() {
        return waiterRealname;
    }

    public void setWaiterRealname(String waiterRealname) {
        this.waiterRealname = waiterRealname == null ? null : waiterRealname.trim();
    }

    public String getWaiterIdentity() {
        return waiterIdentity;
    }

    public void setWaiterIdentity(String waiterIdentity) {
        this.waiterIdentity = waiterIdentity == null ? null : waiterIdentity.trim();
    }

    public String getWaiterPhone() {
        return waiterPhone;
    }

    public void setWaiterPhone(String waiterPhone) {
        this.waiterPhone = waiterPhone == null ? null : waiterPhone.trim();
    }

    public Integer getWaiterStatus() {
        return waiterStatus;
    }

    public void setWaiterStatus(Integer waiterStatus) {
        this.waiterStatus = waiterStatus;
    }

    public Date getWaiterHiredate() {
        return waiterHiredate;
    }

    public void setWaiterHiredate(Date waiterHiredate) {
        this.waiterHiredate = waiterHiredate;
    }

    public String getWaiterEmail() {
        return waiterEmail;
    }

    public void setWaiterEmail(String waiterEmail) {
        this.waiterEmail = waiterEmail == null ? null : waiterEmail.trim();
    }
}