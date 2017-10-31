package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.SystemLogDao;
import com.airport.dao.imp.UserDao;
import com.airport.entity.SystemLog;
import com.airport.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("User")
public class UserController extends TotalController<User,UserDao>{
    public UserController(){

    }
    public UserController(UserDao userDao){
        super(userDao);
    }
}
