package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.UserDao;
import com.airport.dao.imp.YearDao;
import com.airport.entity.User;
import com.airport.entity.Year;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Year")
public class YearController extends TotalController<Year,YearDao>{
    public YearController(){

    }
    public YearController(YearDao yearDao){
        super(yearDao);
    }
}
