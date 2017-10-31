package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.AircraftDao;
import com.airport.dao.imp.TicketorderDao;
import com.airport.entity.Aircraft;
import com.airport.entity.Ticketorder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Ticketorder")
public class TicketorderController extends TotalController<Ticketorder,TicketorderDao>{
    public TicketorderController(){

    }
    public TicketorderController(TicketorderDao ticketorderDao){
        super(ticketorderDao);
    }
}
