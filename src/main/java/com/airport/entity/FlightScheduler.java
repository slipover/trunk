package com.airport.entity;

/**
 * 航班计划表：flight_scheduler
 */
public class FlightScheduler {
    private String flightscheduler_num;//航班号
    private String flight_startDate;//起始日期
    private String flight_endDate;//结束日期
//    private String flight_airLine;//执行航线 al_id
    private Airline airline;
    private String flight_departure;//离港时间
    private String flight_arrival;//到港时间
//    private String air_num;//执行机型
    private Aircraft aircraft;
    private String flight_scheduler;//班期
    private String flight_fullPrice;//基准票价
//    private String flight_manager;//航班经理
    private User user;

    public FlightScheduler(String flightscheduler_num, String flight_startDate, String flight_endDate, Airline airline, String flight_departure, String flight_arrival, Aircraft aircraft, String flight_scheduler, String flight_fullPrice, User user) {
        this.flightscheduler_num = flightscheduler_num;
        this.flight_startDate = flight_startDate;
        this.flight_endDate = flight_endDate;
        this.airline = airline;
        this.flight_departure = flight_departure;
        this.flight_arrival = flight_arrival;
        this.aircraft = aircraft;
        this.flight_scheduler = flight_scheduler;
        this.flight_fullPrice = flight_fullPrice;
        this.user = user;
    }

    public FlightScheduler() {
    }

    public String getFlightscheduler_num() {
        return flightscheduler_num;
    }

    public void setFlightscheduler_num(String flightscheduler_num) {
        this.flightscheduler_num = flightscheduler_num;
    }

    public String getFlight_startDate() {
        return flight_startDate;
    }

    public void setFlight_startDate(String flight_startDate) {
        this.flight_startDate = flight_startDate;
    }

    public String getFlight_endDate() {
        return flight_endDate;
    }

    public void setFlight_endDate(String flight_endDate) {
        this.flight_endDate = flight_endDate;
    }

    public Airline getAirline() {
        return airline;
    }

    public void setAirline(Airline airline) {
        this.airline = airline;
    }

    public String getFlight_departure() {
        return flight_departure;
    }

    public void setFlight_departure(String flight_departure) {
        this.flight_departure = flight_departure;
    }

    public String getFlight_arrival() {
        return flight_arrival;
    }

    public void setFlight_arrival(String flight_arrival) {
        this.flight_arrival = flight_arrival;
    }

    public Aircraft getAircraft() {
        return aircraft;
    }

    public void setAircraft(Aircraft aircraft) {
        this.aircraft = aircraft;
    }

    public String getFlight_scheduler() {
        return flight_scheduler;
    }

    public void setFlight_scheduler(String flight_scheduler) {
        this.flight_scheduler = flight_scheduler;
    }

    public String getFlight_fullPrice() {
        return flight_fullPrice;
    }

    public void setFlight_fullPrice(String flight_fullPrice) {
        this.flight_fullPrice = flight_fullPrice;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "FlightScheduler{" +
                "flightscheduler_num='" + flightscheduler_num + '\'' +
                ", flight_startDate='" + flight_startDate + '\'' +
                ", flight_endDate='" + flight_endDate + '\'' +
                ", airline=" + airline +
                ", flight_departure='" + flight_departure + '\'' +
                ", flight_arrival='" + flight_arrival + '\'' +
                ", aircraft=" + aircraft +
                ", flight_scheduler='" + flight_scheduler + '\'' +
                ", flight_fullPrice='" + flight_fullPrice + '\'' +
                ", user=" + user +
                '}';
    }
}
