package com.airport.entity;

/**
 * 航班表：flight
 */
public class Flight {
    private String flight_num;//航班号
    private String flight_date;//出发日期
    private int flight_cabinClassF;//头等舱剩余座位
    private int flight_cabinClassC;//公物舱剩余座位
    private int flight_cabinClassY;//经济舱剩余座位
    private SeasonDiscount season_discount;//季节折扣
//    private String flightscheduler_num;//航班计划id
    private FlightScheduler flightScheduler;

    public Flight(String flight_date, int flight_cabinClassF, int flight_cabinClassC, int flight_cabinClassY, SeasonDiscount season_discount, FlightScheduler flightScheduler) {
        this.flight_date = flight_date;
        this.flight_cabinClassF = flight_cabinClassF;
        this.flight_cabinClassC = flight_cabinClassC;
        this.flight_cabinClassY = flight_cabinClassY;
        this.season_discount = season_discount;
        this.flightScheduler = flightScheduler;
    }

    public Flight(String flight_num, String flight_date, int flight_cabinClassF, int flight_cabinClassC, int flight_cabinClassY, SeasonDiscount season_discount, FlightScheduler flightScheduler) {
        this.flight_num = flight_num;
        this.flight_date = flight_date;
        this.flight_cabinClassF = flight_cabinClassF;
        this.flight_cabinClassC = flight_cabinClassC;
        this.flight_cabinClassY = flight_cabinClassY;
        this.season_discount = season_discount;
        this.flightScheduler = flightScheduler;
    }

    public Flight() {
    }

    public String getFlight_num() {
        return flight_num;
    }

    public void setFlight_num(String flight_num) {
        this.flight_num = flight_num;
    }

    public String getFlight_date() {
        return flight_date;
    }

    public void setFlight_date(String flight_date) {
        this.flight_date = flight_date;
    }

    public int getFlight_cabinClassF() {
        return flight_cabinClassF;
    }

    public void setFlight_cabinClassF(int flight_cabinClassF) {
        this.flight_cabinClassF = flight_cabinClassF;
    }

    public int getFlight_cabinClassC() {
        return flight_cabinClassC;
    }

    public void setFlight_cabinClassC(int flight_cabinClassC) {
        this.flight_cabinClassC = flight_cabinClassC;
    }

    public int getFlight_cabinClassY() {
        return flight_cabinClassY;
    }

    public void setFlight_cabinClassY(int flight_cabinClassY) {
        this.flight_cabinClassY = flight_cabinClassY;
    }

    public SeasonDiscount getSeason_discount() {
        return season_discount;
    }

    public void setSeason_discount(SeasonDiscount season_discount) {
        this.season_discount = season_discount;
    }

    public FlightScheduler getFlightScheduler() {
        return flightScheduler;
    }

    public void setFlightScheduler(FlightScheduler flightScheduler) {
        this.flightScheduler = flightScheduler;
    }

    @Override
    public String toString() {
        return "Flight{" +
                "flight_num='" + flight_num + '\'' +
                ", flight_date='" + flight_date + '\'' +
                ", flight_cabinClassF=" + flight_cabinClassF +
                ", flight_cabinClassC=" + flight_cabinClassC +
                ", flight_cabinClassY=" + flight_cabinClassY +
                ", season_discount=" + season_discount +
                ", flightScheduler=" + flightScheduler +
                '}';
    }
}
