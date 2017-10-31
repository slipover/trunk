package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AircraftDao;
import com.airport.entity.Aircraft;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Aircraft")
public class AircraftController extends TotalController<Aircraft,AircraftDao>{
    public AircraftController(){

    }
    public AircraftController(AircraftDao aircraftDao){
        super(aircraftDao);
    }
}
