package com.bank.pojo.po;

import java.io.Serializable;
import java.util.Date;

public class CompanyInfo implements Serializable{
    private Integer companyId;

    private String companyUsername;

    private Integer companyPassword;

    private Integer companyStatus;

    private String companyName;

    private String companyCorporate;

    private Date companyCreatetime;

    private String companyPhone;

    private String companyWeb;

    private String companyAddress;

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public String getCompanyUsername() {
        return companyUsername;
    }

    public void setCompanyUsername(String companyUsername) {
        this.companyUsername = companyUsername == null ? null : companyUsername.trim();
    }

    public Integer getCompanyPassword() {
        return companyPassword;
    }

    public void setCompanyPassword(Integer companyPassword) {
        this.companyPassword = companyPassword;
    }

    public Integer getCompanyStatus() {
        return companyStatus;
    }

    public void setCompanyStatus(Integer companyStatus) {
        this.companyStatus = companyStatus;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCompanyCorporate() {
        return companyCorporate;
    }

    public void setCompanyCorporate(String companyCorporate) {
        this.companyCorporate = companyCorporate == null ? null : companyCorporate.trim();
    }

    public Date getCompanyCreatetime() {
        return companyCreatetime;
    }

    public void setCompanyCreatetime(Date companyCreatetime) {
        this.companyCreatetime = companyCreatetime;
    }

    public String getCompanyPhone() {
        return companyPhone;
    }

    public void setCompanyPhone(String companyPhone) {
        this.companyPhone = companyPhone == null ? null : companyPhone.trim();
    }

    public String getCompanyWeb() {
        return companyWeb;
    }

    public void setCompanyWeb(String companyWeb) {
        this.companyWeb = companyWeb == null ? null : companyWeb.trim();
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress == null ? null : companyAddress.trim();
    }
}