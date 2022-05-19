package com.domain;

public class UserLeave {
    private int id;
    private String accountName;
    private String realName;
    private String leaveDate;
    private String reason;
    private int days;
    private String result;

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

    public String getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(String leaveDate) {
        this.leaveDate = leaveDate;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public int getDays() {
        return days;
    }

    public void setDays(int days) {
        this.days = days;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    @Override
    public String toString() {
        return "UserClock{" +
                "Id=" + id +
                ", accountName='" + accountName + '\'' +
                ", realName='" + realName + '\'' +
                ", leaveDate=" + leaveDate + '\'' +
                ", reason=" + reason + '\'' +
                ", days=" + days + '\'' +
                ", result=" + result + '\'' +
                '}';
    }
}
