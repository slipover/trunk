package com.airport.entity;

/**
 * hand_log：手动日志（记录发生的事件）
 */
public class HandLog {
    private int hl_num;//日志编号
    private String hl_date;//记录的日期
    private String hl_event;//记录的事件
    private String hl_reason;//记录发生事件的原因

    public HandLog(int hl_num, String hl_date, String hl_event, String hl_reason) {
        this.hl_num = hl_num;
        this.hl_date = hl_date;
        this.hl_event = hl_event;
        this.hl_reason = hl_reason;
    }

    public HandLog() {
    }

    public int getHl_num() {
        return hl_num;
    }

    public void setHl_num(int hl_num) {
        this.hl_num = hl_num;
    }

    public String getHl_date() {
        return hl_date;
    }

    public void setHl_date(String hl_date) {
        this.hl_date = hl_date;
    }

    public String getHl_event() {
        return hl_event;
    }

    public void setHl_event(String hl_event) {
        this.hl_event = hl_event;
    }

    public String getHl_reason() {
        return hl_reason;
    }

    public void setHl_reason(String hl_reason) {
        this.hl_reason = hl_reason;
    }

    @Override
    public String toString() {
        return "Hand_log{" +
                "hl_num=" + hl_num +
                ", hl_date='" + hl_date + '\'' +
                ", hl_event='" + hl_event + '\'' +
                ", hl_reason='" + hl_reason + '\'' +
                '}';
    }
}
