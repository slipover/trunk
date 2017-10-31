package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.MonthDao;
import com.airport.dao.imp.PassengerDiscountDao;
import com.airport.entity.Month;
import com.airport.entity.PassengerDiscount;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("PassengerDiscount")
public class PassengerDiscountController extends TotalController<PassengerDiscount,PassengerDiscountDao>{
    public PassengerDiscountController(){

    }
    public PassengerDiscountController(PassengerDiscountDao passengerDiscountDao){
        super(passengerDiscountDao);
    }
}
