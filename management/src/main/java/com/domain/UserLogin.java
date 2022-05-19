package com.domain;

import java.io.Serializable;

public class UserLogin implements Serializable {
    private int Id;
    private String accountName;
    private String password;
    private int userType;

    public int getId() {
        return Id;
    }

    public void setId(int id) {
        Id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getUserType() {
        return userType;
    }

    public void setUserType(int userType) {
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "UserLogin{" +
                "Id=" + Id +
                ", accountName='" + accountName + '\'' +
                ", password='" + password + '\'' +
                ", userType=" + userType +
                '}';
    }
}
