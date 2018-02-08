package com.wenlong.pojo.po;

import java.util.Date;

public class CompanyCard {
    private Long companyCardId;

    private Integer companyCardPassword;

    private Long companyLicenceNumber;

    private String companyCardSubbranch;

    private String companyCorporateName;

    private String companyName;

    private Double companyCardAmount;

    private Integer companyCardStatus;

    private Date companyCardCreatetime;

    private String companyAddress;

    private Integer companyId;

    public Long getCompanyCardId() {
        return companyCardId;
    }

    public void setCompanyCardId(Long companyCardId) {
        this.companyCardId = companyCardId;
    }

    public Integer getCompanyCardPassword() {
        return companyCardPassword;
    }

    public void setCompanyCardPassword(Integer companyCardPassword) {
        this.companyCardPassword = companyCardPassword;
    }

    public Long getCompanyLicenceNumber() {
        return companyLicenceNumber;
    }

    public void setCompanyLicenceNumber(Long companyLicenceNumber) {
        this.companyLicenceNumber = companyLicenceNumber;
    }

    public String getCompanyCardSubbranch() {
        return companyCardSubbranch;
    }

    public void setCompanyCardSubbranch(String companyCardSubbranch) {
        this.companyCardSubbranch = companyCardSubbranch == null ? null : companyCardSubbranch.trim();
    }

    public String getCompanyCorporateName() {
        return companyCorporateName;
    }

    public void setCompanyCorporateName(String companyCorporateName) {
        this.companyCorporateName = companyCorporateName == null ? null : companyCorporateName.trim();
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public Double getCompanyCardAmount() {
        return companyCardAmount;
    }

    public void setCompanyCardAmount(Double companyCardAmount) {
        this.companyCardAmount = companyCardAmount;
    }

    public Integer getCompanyCardStatus() {
        return companyCardStatus;
    }

    public void setCompanyCardStatus(Integer companyCardStatus) {
        this.companyCardStatus = companyCardStatus;
    }

    public Date getCompanyCardCreatetime() {
        return companyCardCreatetime;
    }

    public void setCompanyCardCreatetime(Date companyCardCreatetime) {
        this.companyCardCreatetime = companyCardCreatetime;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress == null ? null : companyAddress.trim();
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }
}