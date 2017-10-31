package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.FuelOilDao;
import com.airport.dao.imp.HandLogDao;
import com.airport.entity.FuelOil;
import com.airport.entity.HandLog;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("HandLog")
public class HandLogController extends TotalController<HandLog,HandLogDao>{
    public HandLogController(){

    }
    public HandLogController(HandLogDao handLogDao){
        super(handLogDao);
    }
}
