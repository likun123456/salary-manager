package com.domain;

public class UserClock {
    private int id;
    private String accountName;
    private String realName;
    private int clockYear;
    private  int clockMonth;
    private int clockDay;
    private String clockTime;

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

    public int getClockYear() {
        return clockYear;
    }

    public void setClockYear(int clockYear) {
        this.clockYear = clockYear;
    }

    public int getClockMonth() {
        return clockMonth;
    }

    public void setClockMonth(int clockMonth) {
        this.clockMonth = clockMonth;
    }

    public int getClockDay() {
        return clockDay;
    }

    public void setClockDay(int clockDay) {
        this.clockDay = clockDay;
    }

    public String getClockTime() {
        return clockTime;
    }

    public void setClockTime(String clockTime) {
        this.clockTime = clockTime;
    }

    @Override
    public String toString() {
        return "UserClock{" +
                "Id=" + id +
                ", accountName='" + accountName + '\'' +
                ", realName='" + realName + '\'' +
                ", clockYear=" + clockYear + '\'' +
                ", clockMonth=" + clockMonth+ '\'' +
                ", clockDay=" + clockDay + '\'' +
                ", clockTime=" + clockTime + '\'' +
                '}';
    }
}
