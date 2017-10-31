package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.HandLogDao;
import com.airport.dao.imp.MonthDao;
import com.airport.entity.HandLog;
import com.airport.entity.Month;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Month")
public class MonthController extends TotalController<Month,MonthDao>{
    public MonthController(){

    }
    public MonthController(MonthDao monthDao){
        super(monthDao);
    }
}
