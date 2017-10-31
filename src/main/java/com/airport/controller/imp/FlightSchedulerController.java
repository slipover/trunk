package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.FlightSchedulerDao;
import com.airport.entity.FlightScheduler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("FlightScheduler")
public class FlightSchedulerController extends TotalController<FlightScheduler,FlightSchedulerDao>{
    public FlightSchedulerController(){

    }
    public FlightSchedulerController(FlightSchedulerDao flightSchedulerDao){
        super(flightSchedulerDao);
    }
}
