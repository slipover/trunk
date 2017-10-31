package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AirportDao;
import com.airport.entity.Airport;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Airport")
public class AirportController extends TotalController<Airport,AirportDao>{
    public AirportController(){

    }
    public AirportController(AirportDao airportDao){
        super(airportDao);
    }
}
