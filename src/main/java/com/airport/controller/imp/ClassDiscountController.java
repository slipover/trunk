package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.BusinessRecordDao;
import com.airport.dao.imp.ClassDiscountDao;
import com.airport.entity.BusinessRecord;
import com.airport.entity.ClassDiscount;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("ClassDiscount")
public class ClassDiscountController extends TotalController<ClassDiscount,ClassDiscountDao>{
    public ClassDiscountController(){

    }
    public ClassDiscountController(ClassDiscountDao classDiscountDao){
        super(classDiscountDao);
    }
}
