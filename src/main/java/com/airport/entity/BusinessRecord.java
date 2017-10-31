package com.airport.entity;

/**
 * 营业记录：business_record
 */
public class BusinessRecord {
    private int br_num;//营业编号
    private String br_time;//记录发生时间
    private String br_type;//营业类型
    private Branch branch;//营业网点
    private User user;//营业员工
    private int br_money;//营业金额
    private int br_balance_type;//营业结算类型

    public BusinessRecord(int br_num, String br_time, String br_type, Branch branch, User user, int br_money, int br_balance_type) {
        this.br_num = br_num;
        this.br_time = br_time;
        this.br_type = br_type;
        this.branch = branch;
        this.user = user;
        this.br_money = br_money;
        this.br_balance_type = br_balance_type;
    }

    public BusinessRecord() {
    }

    public int getBr_num() {
        return br_num;
    }

    public void setBr_num(int br_num) {
        this.br_num = br_num;
    }

    public String getBr_time() {
        return br_time;
    }

    public void setBr_time(String br_time) {
        this.br_time = br_time;
    }

    public String getBr_type() {
        return br_type;
    }

    public void setBr_type(String br_type) {
        this.br_type = br_type;
    }

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getBr_money() {
        return br_money;
    }

    public void setBr_money(int br_money) {
        this.br_money = br_money;
    }

    public int getBr_balance_type() {
        return br_balance_type;
    }

    public void setBr_balance_type(int br_balance_type) {
        this.br_balance_type = br_balance_type;
    }

    @Override
    public String toString() {
        return "Business_record{" +
                "br_num=" + br_num +
                ", br_time='" + br_time + '\'' +
                ", br_type='" + br_type + '\'' +
                ", branch=" + branch +
                ", user=" + user +
                ", br_money=" + br_money +
                ", br_balance_type=" + br_balance_type +
                '}';
    }
}
