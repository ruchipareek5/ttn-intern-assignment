package com.ttnInternCafe.ttn_cafe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController	
public class waiterController {
	
	@Autowired
	private chefService chefservice;
	
	@Autowired
	private bartenderService bartenderservice;
	
	@RequestMapping(value="/getmenu")
	public String getmenu(@RequestParam String type){
		return "printing " + type + "  " +"menu";			
	}
		
	@RequestMapping(value="/callwaiter")
	public String callwaiter(){
		return "would you like to place an order ? ";			
	}
	
	@RequestMapping(value="/placeorder")
	public String getplaceorder(@RequestParam String food1, @RequestParam String food2, @RequestParam String drink){
			String s1 = chefservice.PrepareFood(food1, food2);
			String s2 = bartenderservice.PrepareDrinks(drink);
			return s1+" "+s2+ "\n Thank for your service !";
	}
}
