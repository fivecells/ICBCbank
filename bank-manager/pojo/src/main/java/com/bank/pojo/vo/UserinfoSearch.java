package com.bank.pojo.vo;

import java.io.Serializable;

public class UserinfoSearch  implements Serializable{

    private String userName;
    private String userIdentity;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserIdentity() {
        return userIdentity;
    }

    public void setUserIdentity(String userIdentity) {
        this.userIdentity = userIdentity;
    }
}
