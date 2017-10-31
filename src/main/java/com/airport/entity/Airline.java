package com.airport.entity;
/**
 * 航线表：airline
 */
public class Airline {
    private int al_id;//航线号
//    private String al_from//	出发机场三字码
//    private String al_to//	到达机场三字码
    private Airport airport_from;
    private Airport airport_to;
    private double al_mileage;//航线的里程

    public Airline(int al_id, Airport airport_from, Airport airport_to, double al_mileage) {
        this.al_id = al_id;
        this.airport_from = airport_from;
        this.airport_to = airport_to;
        this.al_mileage = al_mileage;
    }

    public Airline() {
    }

    public int getAl_id() {
        return al_id;
    }

    public void setAl_id(int al_id) {
        this.al_id = al_id;
    }

    public Airport getAirport_from() {
        return airport_from;
    }

    public void setAirport_from(Airport airport_from) {
        this.airport_from = airport_from;
    }

    public Airport getAirport_to() {
        return airport_to;
    }

    public void setAirport_to(Airport airport_to) {
        this.airport_to = airport_to;
    }

    public double getAl_mileage() {
        return al_mileage;
    }

    public void setAl_mileage(double al_mileage) {
        this.al_mileage = al_mileage;
    }

    @Override
    public String toString() {
        return "Airline{" +
                "al_id=" + al_id +
                ", airport_from=" + airport_from +
                ", airport_to=" + airport_to +
                ", al_mileage=" + al_mileage +
                '}';
    }
}
