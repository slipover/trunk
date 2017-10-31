package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.SeasonDiscountDao;
import com.airport.dao.imp.SystemLogDao;
import com.airport.entity.SeasonDiscount;
import com.airport.entity.SystemLog;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("SystemLog")
public class SystemLogController extends TotalController<SystemLog,SystemLogDao>{
    public SystemLogController(){

    }
    public SystemLogController(SystemLogDao systemLogDao){
        super(systemLogDao);
    }
}
