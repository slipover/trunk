package com.airport.controller;

import com.airport.dao.TotalDao;
import com.airport.tool.SwitchPage;
import com.alibaba.fastjson.JSONWriter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class TotalController<T,D extends TotalDao> {
    @Autowired
    protected TotalDao<T> totalDao;
    public TotalController(){

    }
    public TotalController(D d){
        this.totalDao=d;
    }
    protected SwitchPage switchPage=new SwitchPage();
    @RequestMapping("/insert")
    public void insert(T t, HttpServletResponse response){
        System.out.println(t);
        switchPage.send(response,totalDao.insert(t)+"");
    }
    @RequestMapping("/update")
    public void update(T t, HttpServletResponse response){
        switchPage.send(response,totalDao.update(t)+"");
    }
    @RequestMapping("/delete")
    public void delete(T t, HttpServletResponse response){
        switchPage.send(response,totalDao.delete(t)+"");
    }
    @RequestMapping("/selectID")
    public void selectID(int id, HttpServletResponse response){
        switchPage.send(response,onSelectId(totalDao.selectID(id)));
    }
    @RequestMapping("/selectQuery")
    public void selectQuery(String pro,String pro2,String datetime,HttpServletResponse response){
        pro=pro.indexOf("市")==-1?pro:pro.substring(0,pro.length()-1);
        pro2=pro2.indexOf("市")==-1?pro2:pro2.substring(0,pro2.length()-1);
        switchPage.send(response,onselectQuery(totalDao.selectQuery(pro,pro2,datetime)));
    }
    @RequestMapping("/selectAll")
    public void selectAll(HttpServletResponse response){
        switchPage.send(response,onSelectAll(totalDao.selectAll()));
    }
    @RequestMapping("/selectPage")
    public void selectPage(int pageNo,int pageSize,HttpServletResponse response){
        switchPage.send(response,onSelectPage(totalDao.selectPage(pageNo,pageSize)));
    }
    @RequestMapping("/insertRelation")
    public void insertRelation(int one,int two,HttpServletResponse response){
        switchPage.send(response,totalDao.insertRelation(one,two)+"");
    }
    @RequestMapping("/deleteRelation")
    public void deleteRelation(int one,int two,HttpServletResponse response){
        switchPage.send(response,totalDao.deleteRelation(one,two)+"");
    }
    protected T onSelectId(T t){
        return t;
    }
    protected List<T> onselectQuery(List<T> ts){
        return ts;
    }
    protected List<T> onSelectAll(List<T> t){
        return t;
    }
    protected List<T> onSelectPage(List<T> ts){
        return ts;
    }
}
