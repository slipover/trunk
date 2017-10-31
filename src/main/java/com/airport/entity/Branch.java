package com.airport.entity;

/**
 * 营业网点表：branch
 */
public class Branch {
    private int bra_id;//网点编号
    private String bra_name;//网点名称
    private String bra_addr;//网点地址
    private String bra_tel;//网点电话
    private String bra_pro;//网点所在省份
    private String bra_city;//网点所在城市

    public Branch(int bra_id, String bra_name, String bra_addr, String bra_tel, String bra_pro, String bra_city) {
        this.bra_id = bra_id;
        this.bra_name = bra_name;
        this.bra_addr = bra_addr;
        this.bra_tel = bra_tel;
        this.bra_pro = bra_pro;
        this.bra_city = bra_city;
    }

    public Branch() {
    }

    public int getBra_id() {
        return bra_id;
    }

    public void setBra_id(int bra_id) {
        this.bra_id = bra_id;
    }

    public String getBra_name() {
        return bra_name;
    }

    public void setBra_name(String bra_name) {
        this.bra_name = bra_name;
    }

    public String getBra_addr() {
        return bra_addr;
    }

    public void setBra_addr(String bra_addr) {
        this.bra_addr = bra_addr;
    }

    public String getBra_tel() {
        return bra_tel;
    }

    public void setBra_tel(String bra_tel) {
        this.bra_tel = bra_tel;
    }

    public String getBra_pro() {
        return bra_pro;
    }

    public void setBra_pro(String bra_pro) {
        this.bra_pro = bra_pro;
    }

    public String getBra_city() {
        return bra_city;
    }

    public void setBra_city(String bra_city) {
        this.bra_city = bra_city;
    }

    @Override
    public String toString() {
        return "Branch{" +
                "bra_id=" + bra_id +
                ", bra_name='" + bra_name + '\'' +
                ", bra_addr='" + bra_addr + '\'' +
                ", bra_tel='" + bra_tel + '\'' +
                ", bra_pro='" + bra_pro + '\'' +
                ", bra_city='" + bra_city + '\'' +
                '}';
    }
}
