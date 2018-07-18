package com.example.springdemo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ApplicationController {
    @RequestMapping(value="/approved",method=RequestMethod.GET)
    public ModelAndView getForm()
    {
        ModelAndView model=new ModelAndView("application");
        model.addObject("class",new ResponseData());
        return model;
    }
    @RequestMapping(value="/approved",method=RequestMethod.POST)
    public ModelAndView status(Application application)
    {
        ModelAndView model=new ModelAndView("application");
        model.addObject("BatchId",application.getBatchId());
        model.addObject("BatchName",application.getBatchName());
        model.addObject("StartDate",application.getStartDate());
        model.addObject("EndDate",application.getEndDate());
        model.addObject("status","approved");
        System.out.println(model);
        return model;
    }
}
