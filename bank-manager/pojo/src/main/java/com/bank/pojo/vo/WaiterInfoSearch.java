package com.bank.pojo.vo;

import java.io.Serializable;

public class WaiterInfoSearch implements Serializable{

    private String waiterRealname;
    private String waiterIdentity;

    public String getWaiterRealname() {
        return waiterRealname;
    }

    public void setWaiterRealname(String waiterRealname) {
        this.waiterRealname = waiterRealname;
    }

    public String getWaiterIdentity() {
        return waiterIdentity;
    }

    public void setWaiterIdentity(String waiterIdentity) {
        this.waiterIdentity = waiterIdentity;
    }
}
