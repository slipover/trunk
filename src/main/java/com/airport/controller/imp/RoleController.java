package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.PopedomDao;
import com.airport.dao.imp.RoleDao;
import com.airport.entity.Popedom;
import com.airport.entity.Role;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Role")
public class RoleController extends TotalController<Role,RoleDao>{
    public RoleController(){

    }
    public RoleController(RoleDao roleDao){
        super(roleDao);
    }
}
