package com.airport.entity;

/**
 * 机场建设表：construct
 */
public class Construst {
    private String con_type;//乘客类型
    private int con_minsax;//70座以下小飞机（包含70座）的机建费
    private int con_maxsax;//70座以上大飞机的机建费

    public Construst(String con_type, int con_minsax, int con_maxsax) {
        this.con_type = con_type;
        this.con_minsax = con_minsax;
        this.con_maxsax = con_maxsax;
    }

    public Construst() {
    }

    public String getCon_type() {
        return con_type;
    }

    public void setCon_type(String con_type) {
        this.con_type = con_type;
    }

    public int getCon_minsax() {
        return con_minsax;
    }

    public void setCon_minsax(int con_minsax) {
        this.con_minsax = con_minsax;
    }

    public int getCon_maxsax() {
        return con_maxsax;
    }

    public void setCon_maxsax(int con_maxsax) {
        this.con_maxsax = con_maxsax;
    }

    @Override
    public String toString() {
        return "Construst{" +
                "con_type='" + con_type + '\'' +
                ", con_minsax=" + con_minsax +
                ", con_maxsax=" + con_maxsax +
                '}';
    }
}
