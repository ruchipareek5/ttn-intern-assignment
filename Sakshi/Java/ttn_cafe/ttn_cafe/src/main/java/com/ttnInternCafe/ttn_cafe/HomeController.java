package com.ttnInternCafe.ttn_cafe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
@RequestMapping("/index")
public String getIndex()
{
	return "index";
}
	
}
