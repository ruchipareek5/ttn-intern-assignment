package com.ssgj.ssdm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {

	@Autowired 
	CafeService cafeService;
	@Autowired
	BarTenderService barTenderService;
	
	@RequestMapping("/get-menu")
	public String printMenu()
	{
		return "Food Menu:Pizza 2.Noodles 3.Burger Drinks: 1.Ice-Tea 2.Mojito 3Lemonade";
	}
	@RequestMapping("/call-waiter")
	public String CallWaiter()
	{
		return "Would You like to place an order???";
	}
	@RequestMapping("/place-order")
	public String PlaceOrder(@RequestParam String item1,@RequestParam String item2,@RequestParam String drink)
	{
		String res1=cafeService.prepareFood(item1, item2);
		String res2=barTenderService.prepareDrink(drink);
		return res1+"  "+res2 ;
	}
}
