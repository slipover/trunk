package com.airport.tool;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONWriter;
import org.springframework.stereotype.Repository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class SwitchPage {
    /**
     * 将 List集合 转为 JSON 发送
     * @param response
     * @param objects
     */
    public void send(HttpServletResponse response,List<?> objects){
        try {
            PrintWriter pw=response.getWriter();
            JSONWriter jsonWriter=new JSONWriter(pw);
            jsonWriter.startArray();
            for (Object object : objects) {
                jsonWriter.writeObject(object);
            }
            jsonWriter.endArray();
            jsonWriter.close();
            pw.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 将 对象 转为 JSON 发送
     * @param response
     * @param object
     */
    public void send(HttpServletResponse response,Object object){
        send(response,JSON.toJSONString(object));
    }

    /**
     * 将 String 发送
     * @param response
     * @param s
     */
    public void send(HttpServletResponse response,String s){
        try {
            PrintWriter pw=response.getWriter();
            pw.write(s);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void request(HttpServletRequest request,HttpServletResponse response,String url){
        try {
            request.getRequestDispatcher(url).forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    public void response(HttpServletResponse response,String url){
        try {
            response.sendRedirect(url);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
