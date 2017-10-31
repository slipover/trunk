package com.airport.entity;

/**
 * Month：营业员月报表
 */
public class Month {
    private int bui_month_id;//营业员月报表编号
    private int user_id;//营业员编号
    private int total_record_no;//总记录条数
    private int deal_record;//订票记录条数
    private int return_ticket_record;//退票记录条数
    private int update_record;//改签记录条数
    private double total_record_fee;//总记录金额
    private double book_ticket_fee;//订票记录金额
    private double return_ticket_fee;//退票记录金额
    private double change_record_fee;//改签记录金额
    private String month;//当前月份

    public Month(int bui_month_id, int user_id, int total_record_no, int deal_record, int return_ticket_record, int update_record, double total_record_fee, double book_ticket_fee, double return_ticket_fee, double change_record_fee, String month) {
        this.bui_month_id = bui_month_id;
        this.user_id = user_id;
        this.total_record_no = total_record_no;
        this.deal_record = deal_record;
        this.return_ticket_record = return_ticket_record;
        this.update_record = update_record;
        this.total_record_fee = total_record_fee;
        this.book_ticket_fee = book_ticket_fee;
        this.return_ticket_fee = return_ticket_fee;
        this.change_record_fee = change_record_fee;
        this.month = month;
    }

    public Month() {
    }

    public int getBui_month_id() {
        return bui_month_id;
    }

    public void setBui_month_id(int bui_month_id) {
        this.bui_month_id = bui_month_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getTotal_record_no() {
        return total_record_no;
    }

    public void setTotal_record_no(int total_record_no) {
        this.total_record_no = total_record_no;
    }

    public int getDeal_record() {
        return deal_record;
    }

    public void setDeal_record(int deal_record) {
        this.deal_record = deal_record;
    }

    public int getReturn_ticket_record() {
        return return_ticket_record;
    }

    public void setReturn_ticket_record(int return_ticket_record) {
        this.return_ticket_record = return_ticket_record;
    }

    public int getUpdate_record() {
        return update_record;
    }

    public void setUpdate_record(int update_record) {
        this.update_record = update_record;
    }

    public double getTotal_record_fee() {
        return total_record_fee;
    }

    public void setTotal_record_fee(double total_record_fee) {
        this.total_record_fee = total_record_fee;
    }

    public double getBook_ticket_fee() {
        return book_ticket_fee;
    }

    public void setBook_ticket_fee(double book_ticket_fee) {
        this.book_ticket_fee = book_ticket_fee;
    }

    public double getReturn_ticket_fee() {
        return return_ticket_fee;
    }

    public void setReturn_ticket_fee(double return_ticket_fee) {
        this.return_ticket_fee = return_ticket_fee;
    }

    public double getChange_record_fee() {
        return change_record_fee;
    }

    public void setChange_record_fee(double change_record_fee) {
        this.change_record_fee = change_record_fee;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    @Override
    public String toString() {
        return "Month{" +
                "bui_month_id=" + bui_month_id +
                ", user_id=" + user_id +
                ", total_record_no=" + total_record_no +
                ", deal_record=" + deal_record +
                ", return_ticket_record=" + return_ticket_record +
                ", update_record=" + update_record +
                ", total_record_fee=" + total_record_fee +
                ", book_ticket_fee=" + book_ticket_fee +
                ", return_ticket_fee=" + return_ticket_fee +
                ", change_record_fee=" + change_record_fee +
                ", month='" + month + '\'' +
                '}';
    }
}
