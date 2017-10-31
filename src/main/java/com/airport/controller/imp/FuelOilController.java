package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.FuelOilDao;
import com.airport.entity.FuelOil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("FuelOil")
public class FuelOilController extends TotalController<FuelOil,FuelOilDao>{
    public FuelOilController(){

    }
    public FuelOilController(FuelOilDao fuelOilDao){
        super(fuelOilDao);
    }
}
