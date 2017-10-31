package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.RoleDao;
import com.airport.dao.imp.SeasonDiscountDao;
import com.airport.entity.Role;
import com.airport.entity.SeasonDiscount;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("SeasonDiscount")
public class SeasonDiscountController extends TotalController<SeasonDiscount,SeasonDiscountDao>{
    public SeasonDiscountController(){

    }
    public SeasonDiscountController(SeasonDiscountDao seasonDiscountDao){
        super(seasonDiscountDao);
    }
}
