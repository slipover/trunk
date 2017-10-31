package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AircraftDao;
import com.airport.dao.imp.ConstrustDao;
import com.airport.entity.Aircraft;
import com.airport.entity.Construst;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Construst")
public class ConstrustController extends TotalController<Construst,ConstrustDao>{
    public ConstrustController(){

    }
    public ConstrustController(ConstrustDao construstDao){
        super(construstDao);
    }
}
