package com.airport.entity;

/**
 * 用户表：t_user
 */
public class User {
    private int user_id;//主键，id
    private String user_name;//姓名
    private String user_password;//用户密码
//    private String rol_name;//角色，与角色role表的rol_id关联
    private Role role;
//    private int pop_value;//附加权限编号 权限的大小
    private Popedom popedom;
    private Branch branch;
//    private int bra_id;//营业网点
    private String user_tel;//联系方式
    private String user_province;//所属省份，在添加用户时由管理员添加
    private String user_city;//所属城市，在添加用户时由管理员添加
    private int user_secret;//随机生成的密钥

    public User() {
    }

    public User(int user_id, String user_name, String user_password, Role role, Popedom popedom, Branch branch, String user_tel, String user_province, String user_city, int user_secret) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_password = user_password;
        this.role = role;
        this.popedom = popedom;
        this.branch = branch;
        this.user_tel = user_tel;
        this.user_province = user_province;
        this.user_city = user_city;
        this.user_secret = user_secret;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_password() {
        return user_password;
    }

    public void setUser_password(String user_password) {
        this.user_password = user_password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Popedom getPopedom() {
        return popedom;
    }

    public void setPopedom(Popedom popedom) {
        this.popedom = popedom;
    }

    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    public String getUser_tel() {
        return user_tel;
    }

    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
    }

    public String getUser_province() {
        return user_province;
    }

    public void setUser_province(String user_province) {
        this.user_province = user_province;
    }

    public String getUser_city() {
        return user_city;
    }

    public void setUser_city(String user_city) {
        this.user_city = user_city;
    }

    public int getUser_secret() {
        return user_secret;
    }

    public void setUser_secret(int user_secret) {
        this.user_secret = user_secret;
    }

}
