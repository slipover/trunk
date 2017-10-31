package com.airport.entity;

/**
 * 权限表：popedom
 */
public class Popedom {
    private int pop_id;//权限id
    private String pop_name;//权限名称
    private int pop_value;//权限大小

    public Popedom(int pop_id, String pop_name, int pop_value) {
        this.pop_id = pop_id;
        this.pop_name = pop_name;
        this.pop_value = pop_value;
    }

    public Popedom() {
    }

    public int getPop_id() {
        return pop_id;
    }

    public void setPop_id(int pop_id) {
        this.pop_id = pop_id;
    }

    public String getPop_name() {
        return pop_name;
    }

    public void setPop_name(String pop_name) {
        this.pop_name = pop_name;
    }

    public int getPop_value() {
        return pop_value;
    }

    public void setPop_value(int pop_value) {
        this.pop_value = pop_value;
    }

    @Override
    public String toString() {
        return "Popedom{" +
                "pop_id=" + pop_id +
                ", pop_name='" + pop_name + '\'' +
                ", pop_value=" + pop_value +
                '}';
    }
}
