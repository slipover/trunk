package com.airport.entity;

/**
 * 乘客类型折扣：passenger_discount
 */
public class PassengerDiscount {
    private String pd_type;//乘客类型
    private double pd_re;//乘客折扣

    public PassengerDiscount(String pd_type, double pd_re) {
        this.pd_type = pd_type;
        this.pd_re = pd_re;
    }

    public PassengerDiscount() {
    }

    public String getPd_type() {
        return pd_type;
    }

    public void setPd_type(String pd_type) {
        this.pd_type = pd_type;
    }

    public double getPd_re() {
        return pd_re;
    }

    public void setPd_re(double pd_re) {
        this.pd_re = pd_re;
    }

    @Override
    public String toString() {
        return "Passenger_discount{" +
                "pd_type='" + pd_type + '\'' +
                ", pd_re=" + pd_re +
                '}';
    }
}
