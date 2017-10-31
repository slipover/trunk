package com.airport.entity;

/**
 * 舱位折扣：class_discount
 */
public class ClassDiscount {
    private String cd_type;//仓位类型 F
    private double cd_re;//仓位折扣

    public ClassDiscount(String cd_type, double cd_re) {
        this.cd_type = cd_type;
        this.cd_re = cd_re;
    }

    public ClassDiscount() {
    }

    public String getCd_type() {
        return cd_type;
    }

    public void setCd_type(String cd_type) {
        this.cd_type = cd_type;
    }

    public double getCd_re() {
        return cd_re;
    }

    public void setCd_re(double cd_re) {
        this.cd_re = cd_re;
    }

    @Override
    public String toString() {
        return "Class_discount{" +
                "cd_type='" + cd_type + '\'' +
                ", cd_re=" + cd_re +
                '}';
    }
}
