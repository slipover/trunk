package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.PassengerDiscountDao;
import com.airport.dao.imp.PopedomDao;
import com.airport.entity.PassengerDiscount;
import com.airport.entity.Popedom;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Popedom")
public class PopedomController extends TotalController<Popedom,PopedomDao>{
    public PopedomController(){

    }
    public PopedomController(PopedomDao popedomDao){
        super(popedomDao);
    }
}
