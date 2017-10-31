package com.airport.entity;

/**
 * 飞机表：aircraft（机型）
 */
public class Aircraft {
    private String air_num;//飞机编号 "B747-400"
    private int max_voy;//最大航程  *公里
    private int mod_a;//头等舱座位数
    private int mod_b;//公务舱座位数
    private int mod_c;//经济舱座位数

    public Aircraft(String air_num, int max_voy, int mod_a, int mod_b, int mod_c) {
        this.air_num = air_num;
        this.max_voy = max_voy;
        this.mod_a = mod_a;
        this.mod_b = mod_b;
        this.mod_c = mod_c;
    }

    public Aircraft() {
    }

    public Aircraft(String air_num) {
        this.air_num = air_num;
    }

    public String getAir_num() {
        return air_num;
    }

    public void setAir_num(String air_num) {
        this.air_num = air_num;
    }

    public int getMax_voy() {
        return max_voy;
    }

    public void setMax_voy(int max_voy) {
        this.max_voy = max_voy;
    }

    public int getMod_a() {
        return mod_a;
    }

    public void setMod_a(int mod_a) {
        this.mod_a = mod_a;
    }

    public int getMod_b() {
        return mod_b;
    }

    public void setMod_b(int mod_b) {
        this.mod_b = mod_b;
    }

    public int getMod_c() {
        return mod_c;
    }

    public void setMod_c(int mod_c) {
        this.mod_c = mod_c;
    }

    @Override
    public String toString() {
        return "Aircraft{" +
                "air_num='" + air_num + '\'' +
                ", max_voy=" + max_voy +
                ", mod_a=" + mod_a +
                ", mod_b=" + mod_b +
                ", mod_c=" + mod_c +
                '}';
    }
}
