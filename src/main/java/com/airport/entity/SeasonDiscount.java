package com.airport.entity;

/**
 *季节折扣：season_discount
 */
public class SeasonDiscount {
    private String sd_type;//季节类型
    private double sd_re;//季节折扣

    public SeasonDiscount(String sd_type, double sd_re) {
        this.sd_type = sd_type;
        this.sd_re = sd_re;
    }

    public SeasonDiscount() {
    }

    public String getSd_type() {
        return sd_type;
    }

    public void setSd_type(String sd_type) {
        this.sd_type = sd_type;
    }

    public double getSd_re() {
        return sd_re;
    }

    public void setSd_re(double sd_re) {
        this.sd_re = sd_re;
    }

    @Override
    public String toString() {
        return "Season_discount{" +
                "sd_type='" + sd_type + '\'' +
                ", sd_re=" + sd_re +
                '}';
    }
}
