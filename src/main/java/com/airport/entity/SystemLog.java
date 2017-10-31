package com.airport.entity;

/**
 * system_log：系统日志
 */
public class SystemLog {
    private int sl_num;//日志编号
    private String sl_date;//记录的日期
//    private String sl_event;//记录的事件
    private HandLog hand_log;//记录的事件

    public SystemLog(int sl_num, String sl_date, HandLog hand_log) {
        this.sl_num = sl_num;
        this.sl_date = sl_date;
        this.hand_log = hand_log;
    }

    public SystemLog() {
    }

    public int getSl_num() {
        return sl_num;
    }

    public void setSl_num(int sl_num) {
        this.sl_num = sl_num;
    }

    public String getSl_date() {
        return sl_date;
    }

    public void setSl_date(String sl_date) {
        this.sl_date = sl_date;
    }

    public HandLog getHand_log() {
        return hand_log;
    }

    public void setHand_log(HandLog hand_log) {
        this.hand_log = hand_log;
    }

    @Override
    public String toString() {
        return "System_log{" +
                "sl_num=" + sl_num +
                ", sl_date='" + sl_date + '\'' +
                ", hand_log=" + hand_log +
                '}';
    }
}
