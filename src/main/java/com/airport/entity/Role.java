package com.airport.entity;

/**
 * 角色表：role
 */
public class Role {
    private int rol_id;//角色ID，是该表的唯一标识
    private String rol_name;//角色名称
    private int rol_number;//权限编号, 角色的权限编号是系统管理员在新建角色时赋予的

    public Role(int rol_id, String rol_name, int rol_number) {
        this.rol_id = rol_id;
        this.rol_name = rol_name;
        this.rol_number = rol_number;
    }

    public Role() {
    }

    public int getRol_id() {
        return rol_id;
    }

    public void setRol_id(int rol_id) {
        this.rol_id = rol_id;
    }

    public String getRol_name() {
        return rol_name;
    }

    public void setRol_name(String rol_name) {
        this.rol_name = rol_name;
    }

    public int getRol_number() {
        return rol_number;
    }

    public void setRol_number(int rol_number) {
        this.rol_number = rol_number;
    }

    @Override
    public String toString() {
        return "Role{" +
                "rol_id=" + rol_id +
                ", rol_name='" + rol_name + '\'' +
                ", rol_number=" + rol_number +
                '}';
    }
}
