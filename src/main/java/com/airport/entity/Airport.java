package com.airport.entity;

/**
 * 机场表：airport
 */
public class Airport {
    private String ap_code;//机场的三字码编码
    private String ap_area;//机场所属地区
    private String ap_city;//机场所属城市
    private String ap_airportname;//机场名



    public Airport(String ap_code, String ap_area, String ap_city, String ap_airportname) {
        this.ap_code = ap_code;
        this.ap_area = ap_area;
        this.ap_city = ap_city;
        this.ap_airportname = ap_airportname;
    }

    public Airport() {
    }

    public Airport(String ap_code) {
        this.ap_code = ap_code;
    }

    public String getAp_code() {
        return ap_code;
    }

    public void setAp_code(String ap_code) {
        this.ap_code = ap_code;
    }

    public String getAp_area() {
        return ap_area;
    }

    public void setAp_area(String ap_area) {
        this.ap_area = ap_area;
    }

    public String getAp_city() {
        return ap_city;
    }

    public void setAp_city(String ap_city) {
        this.ap_city = ap_city;
    }

    public String getAp_airportname() {
        return ap_airportname;
    }

    public void setAp_airportname(String ap_airportname) {
        this.ap_airportname = ap_airportname;
    }

    @Override
    public String toString() {
        return "Airport{" +
                "ap_code='" + ap_code + '\'' +
                ", ap_area='" + ap_area + '\'' +
                ", ap_city='" + ap_city + '\'' +
                ", ap_airportname='" + ap_airportname + '\'' +
                '}';
    }
}
