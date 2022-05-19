package com.domain;

public class UserInfo {
    private int id;
    private String accountName;
    private String realName;
    private String depart;
    private String address;
    private String phone;
    private String sex;
    private String age;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getDepart() {
        return depart;
    }

    public void setDepart(String depart) {
        this.depart = depart;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    @Override
    public String toString() {
        return "UserLogin{" +
                "Id=" + id +
                ", accountName='" + accountName + '\'' +
                ", realName='" + realName + '\'' +
                ", depart=" + depart + '\'' +
                ", address=" + address + '\'' +
                ", phone=" + phone + '\'' +
                ", sex=" + sex + '\'' +
                ", age=" + age + '\'' +
                '}';
    }
}
