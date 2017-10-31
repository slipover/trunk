package com.airport.controller.imp;

import com.airport.controller.TotalController;
import com.airport.dao.imp.BranchDao;
import com.airport.dao.imp.BusinessRecordDao;
import com.airport.entity.Branch;
import com.airport.entity.BusinessRecord;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("BusinessRecord")
public class BusinessRecordController extends TotalController<BusinessRecord,BusinessRecordDao>{
    public BusinessRecordController(){

    }
    public BusinessRecordController(BusinessRecordDao businessRecordDao){
        super(businessRecordDao);
    }
}
