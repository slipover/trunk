package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.FlightCopyDao;
import com.airport.entity.FlightCopy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("FlightCopy")
public class FlightCopyController extends TotalController<FlightCopy,FlightCopyDao>{
    public FlightCopyController(){

    }
    public FlightCopyController(FlightCopyDao flightCopyDao){
        super(flightCopyDao);
    }
}
