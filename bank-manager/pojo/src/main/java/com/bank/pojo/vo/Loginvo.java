package com.bank.pojo.vo;

import java.io.Serializable;

public class Loginvo implements Serializable{

    private String username;

    private String password;

    private  String auto;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAuto() {
        return auto;
    }

    public void setAuto(String auto) {
        this.auto = auto;
    }

    @Override
    public String toString() {
        return "Loginvo{" +
                "username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", auto='" + auto + '\'' +
                '}';
    }
}
