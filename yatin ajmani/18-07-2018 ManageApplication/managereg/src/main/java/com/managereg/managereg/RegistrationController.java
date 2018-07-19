package com.managereg.managereg;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class RegistrationController {
    @RequestMapping("/")
    public String getPage(){
        return "ManageRegistrations";
    }

    @RequestMapping(value = "/", method = RequestMethod.POST)
    @ResponseBody
    public String bla(@ModelAttribute Registrations m) {
        System.out.println(m.getId()+m.getStatus());
        return "Success";
    }
}
