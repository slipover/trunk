package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AirportDao;
import com.airport.dao.imp.BranchDao;
import com.airport.entity.Airport;
import com.airport.entity.Branch;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Branch")
public class BranchController extends TotalController<Branch,BranchDao>{
    public BranchController(){

    }
    public BranchController(BranchDao branchDao){
        super(branchDao);
    }
}
