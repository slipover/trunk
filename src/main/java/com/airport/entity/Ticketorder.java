package com.airport.entity;

/**
 * 机票订单：ticket_order
 */
public class Ticketorder {
    private int ord_id;//机票编号
//    private int br_num;//相关营业记录
    private BusinessRecord businessRecord;
//    private String flight_number;//航班编号
    private Flight flight;
    private String passenger_name;//乘客姓名
    private String certification_number;//乘客证件号
    private String ord_date;//出票时间
//    private String cd_type;//舱位等级
    private ClassDiscount classDiscount;
//    private String pd_type;//乘客类型
    private PassengerDiscount passengerDiscount;
    private double ord_price;//最终票价
//    private int bra_id;//营业网点编号
    private Branch branch;
//    private String ord_rol_id;//营业员编号
    private User user;

    public Ticketorder(int ord_id, BusinessRecord businessRecord, Flight flight, String passenger_name, String certification_number, String ord_date, ClassDiscount classDiscount, PassengerDiscount passengerDiscount, double ord_price, Branch branch, User user) {
        this.ord_id = ord_id;
        this.businessRecord = businessRecord;
        this.flight = flight;
        this.passenger_name = passenger_name;
        this.certification_number = certification_number;
        this.ord_date = ord_date;
        this.classDiscount = classDiscount;
        this.passengerDiscount = passengerDiscount;
        this.ord_price = ord_price;
        this.branch = branch;
        this.user = user;
    }

    public Ticketorder() {
    }

    public int getOrd_id() {
        return ord_id;
    }

    public void setOrd_id(int ord_id) {
        this.ord_id = ord_id;
    }

    public BusinessRecord getBusinessRecord() {
        return businessRecord;
    }

    public void setBusinessRecord(BusinessRecord businessRecord) {
        this.businessRecord = businessRecord;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public String getPassenger_name() {
        return passenger_name;
    }

    public void setPassenger_name(String passenger_name) {
        this.passenger_name = passenger_name;
    }

    public String getCertification_number() {
        return certification_number;
    }

    public void setCertification_number(String certification_number) {
        this.certification_number = certification_number;
    }

    public String getOrd_date() {
        return ord_date;
    }

    public void setOrd_date(String ord_date) {
        this.ord_date = ord_date;
    }

    public ClassDiscount getClassDiscount() {
        return classDiscount;
    }

    public void setClassDiscount(ClassDiscount classDiscount) {
        this.classDiscount = classDiscount;
    }

    public PassengerDiscount getPassengerDiscount() {
        return passengerDiscount;
    }

    public void setPassengerDiscount(PassengerDiscount passengerDiscount) {
        this.passengerDiscount = passengerDiscount;
    }

    public double getOrd_price() {
        return ord_price;
    }

    public void setOrd_price(double ord_price) {
        this.ord_price = ord_price;
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

    @Override
    public String toString() {
        return "Ticketorder{" +
                "ord_id=" + ord_id +
                ", businessRecord=" + businessRecord +
                ", flight=" + flight +
                ", passenger_name='" + passenger_name + '\'' +
                ", certification_number='" + certification_number + '\'' +
                ", ord_date='" + ord_date + '\'' +
                ", classDiscount=" + classDiscount +
                ", passengerDiscount=" + passengerDiscount +
                ", ord_price=" + ord_price +
                ", branch=" + branch +
                ", user=" + user +
                '}';
    }
}
