package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AirlineDao;
import com.airport.dao.imp.AirportDao;
import com.airport.entity.Airline;
import com.airport.entity.Airport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Airline")
public class AirlineController extends TotalController<Airline,AirlineDao>{
    public AirlineController(){

    }
    public AirlineController(AirlineDao airlineDao){
        super(airlineDao);
    }
}
