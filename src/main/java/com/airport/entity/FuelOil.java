package com.airport.entity;

/**
 * 燃油表：fuel_oil
 */
public class FuelOil {
    private String fo_type;//乘客类型
    private int fo_minsax;//800km以内的航
    private int fo_maxsax;//800km航程以外所需燃油费

    public FuelOil(String fo_type, int fo_minsax, int fo_maxsax) {
        this.fo_type = fo_type;
        this.fo_minsax = fo_minsax;
        this.fo_maxsax = fo_maxsax;
    }

    public FuelOil() {
    }

    public String getFo_type() {
        return fo_type;
    }

    public void setFo_type(String fo_type) {
        this.fo_type = fo_type;
    }

    public int getFo_minsax() {
        return fo_minsax;
    }

    public void setFo_minsax(int fo_minsax) {
        this.fo_minsax = fo_minsax;
    }

    public int getFo_maxsax() {
        return fo_maxsax;
    }

    public void setFo_maxsax(int fo_maxsax) {
        this.fo_maxsax = fo_maxsax;
    }

    @Override
    public String toString() {
        return "Fuel_oil{" +
                "fo_type='" + fo_type + '\'' +
                ", fo_minsax=" + fo_minsax +
                ", fo_maxsax=" + fo_maxsax +
                '}';
    }
}
