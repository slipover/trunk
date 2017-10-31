package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.FlightDao;
import com.airport.entity.Flight;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("Flight")
public class FlightController extends TotalController<Flight,FlightDao>{
    public FlightController(){

    }
    public FlightController(FlightDao flightDao){
        super(flightDao);
    }

    @Override
    protected List<Flight> onselectQuery(List<Flight> flights) {
        return super.onselectQuery(flights);
    }
}
