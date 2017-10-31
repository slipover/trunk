package com.airport.entity;

/**
 * 航班备份表：Flight_copy
 */
public class FlightCopy {
    private int copy_number;//备份表编号
    private String copy_date;//备份日期
//    private int fgt_first_seats;//头等舱剩余座位数
//    private int fgt_buiness_seats;//公务舱剩余座位数
//    private int fgt_economy_seats; //经济舱剩余座位数
    private Flight flight;//航班号
    private SeasonDiscount season_discount;//季节折扣
    private double real_price;//实际票价
//    fpn_src_airport	出发地
//    fpn_tag_airport	目的地
     private Airline airline;
//    private String fpn_leave_time;//起飞时间
//    private String fpn_reach_time;//到达时间
//    private Aircraft aircraft;//机型
    private FlightScheduler flight_scheduler;
    private int sold_first_class_seats;//已售出头等舱座位数
    private int sold_business_seats;//已售出商务舱座位数
    private int sold_plain_seats;//已售出经济舱座位数

    public FlightCopy(int copy_number, String copy_date, Flight flight, SeasonDiscount season_discount, double real_price, Airline airline, FlightScheduler flight_scheduler, int sold_first_class_seats, int sold_business_seats, int sold_plain_seats) {
        this.copy_number = copy_number;
        this.copy_date = copy_date;
        this.flight = flight;
        this.season_discount = season_discount;
        this.real_price = real_price;
        this.airline = airline;
        this.flight_scheduler = flight_scheduler;
        this.sold_first_class_seats = sold_first_class_seats;
        this.sold_business_seats = sold_business_seats;
        this.sold_plain_seats = sold_plain_seats;
    }

    public FlightCopy() {
    }

    public int getCopy_number() {
        return copy_number;
    }

    public void setCopy_number(int copy_number) {
        this.copy_number = copy_number;
    }

    public String getCopy_date() {
        return copy_date;
    }

    public void setCopy_date(String copy_date) {
        this.copy_date = copy_date;
    }

    public Flight getFlight() {
        return flight;
    }

    public void setFlight(Flight flight) {
        this.flight = flight;
    }

    public SeasonDiscount getSeason_discount() {
        return season_discount;
    }

    public void setSeason_discount(SeasonDiscount season_discount) {
        this.season_discount = season_discount;
    }

    public double getReal_price() {
        return real_price;
    }

    public void setReal_price(double real_price) {
        this.real_price = real_price;
    }

    public Airline getAirline() {
        return airline;
    }

    public void setAirline(Airline airline) {
        this.airline = airline;
    }

    public FlightScheduler getFlight_scheduler() {
        return flight_scheduler;
    }

    public void setFlight_scheduler(FlightScheduler flight_scheduler) {
        this.flight_scheduler = flight_scheduler;
    }

    public int getSold_first_class_seats() {
        return sold_first_class_seats;
    }

    public void setSold_first_class_seats(int sold_first_class_seats) {
        this.sold_first_class_seats = sold_first_class_seats;
    }

    public int getSold_business_seats() {
        return sold_business_seats;
    }

    public void setSold_business_seats(int sold_business_seats) {
        this.sold_business_seats = sold_business_seats;
    }

    public int getSold_plain_seats() {
        return sold_plain_seats;
    }

    public void setSold_plain_seats(int sold_plain_seats) {
        this.sold_plain_seats = sold_plain_seats;
    }

    @Override
    public String toString() {
        return "Flight_copy{" +
                "copy_number=" + copy_number +
                ", copy_date='" + copy_date + '\'' +
                ", flight=" + flight +
                ", season_discount=" + season_discount +
                ", real_price=" + real_price +
                ", airline=" + airline +
                ", flight_scheduler=" + flight_scheduler +
                ", sold_first_class_seats=" + sold_first_class_seats +
                ", sold_business_seats=" + sold_business_seats +
                ", sold_plain_seats=" + sold_plain_seats +
                '}';
    }
}
