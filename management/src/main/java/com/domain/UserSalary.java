package com.domain;

public class UserSalary {
    private int id;
    private String accountName;
    private String realName;
    private int YEAR;
    private int MONTH;
    private int salary;
    private int basic_salary;
    private int post_salary;
    private int performance_salary;
    private int social_security;
    private int revenue;
    private int leave;
    private String salaryDate;

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

    public int getYEAR() {
        return YEAR;
    }

    public void setYEAR(int YEAR) {
        this.YEAR = YEAR;
    }

    public int getMONTH() {
        return MONTH;
    }

    public void setMONTH(int MONTH) {
        this.MONTH = MONTH;
    }

    public int getSalary() {
        return salary;
    }

    public void setSalary(int salary) {
        this.salary = salary;
    }

    public String getSalaryDate() {
        return salaryDate;
    }

    public void setSalaryDate(String salaryDate) {
        this.salaryDate = salaryDate;
    }

    public int getBasic_salary() {
        return basic_salary;
    }

    public void setBasic_salary(int basic_salary) {
        this.basic_salary = basic_salary;
    }

    public int getPost_salary() {
        return post_salary;
    }

    public void setPost_salary(int post_salary) {
        this.post_salary = post_salary;
    }

    public int getPerformance_salary() {
        return performance_salary;
    }

    public void setPerformance_salary(int performance_salary) {
        this.performance_salary = performance_salary;
    }

    public int getSocial_security() {
        return social_security;
    }

    public void setSocial_security(int social_security) {
        this.social_security = social_security;
    }

    public int getRevenue() {
        return revenue;
    }

    public void setRevenue(int revenue) {
        this.revenue = revenue;
    }

    public int getLeave() {
        return leave;
    }

    public void setLeave(int leave) {
        this.leave = leave;
    }

    @Override
    public String toString() {
        return "UserSalary{" +
                "id=" + id +
                ", accountName='" + accountName + '\'' +
                ", realName='" + realName + '\'' +
                ", YEAR=" + YEAR +
                ", MONTH=" + MONTH +
                ", salary=" + salary +
                ", basic_salary=" + basic_salary +
                ", post_salary=" + post_salary +
                ", performance_salary=" + performance_salary +
                ", social_security=" + social_security +
                ", revenue=" + revenue +
                ", leave=" + leave +
                ", salaryDate='" + salaryDate + '\'' +
                '}';
    }
}
