package com.ttn.cafe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CafeController {
	@Autowired
	private ChefService chef;
	@Autowired
	private BartenderService bartender;
	@Autowired
	private MenuService cafeMenu;
	
	@RequestMapping("/get-menu")
	public String getMenu(@RequestParam String type) {
		String menu = "Welcome to TTN Cafe";
		menu += "\nHere's the " + type + " menu:";
		menu += cafeMenu.getMenu(type);
		return menu;
	}
	
	@RequestMapping("/call-waiter")
	public String callWaiter() {
		return "Would you like to place an order?";
	}
	
	@RequestMapping("/place-order")
	public String placeOrder(@RequestParam String foodOne, @RequestParam String foodTwo, @RequestParam String drink) {
		String text = "";
		text += chef.prepareFood(foodOne);
		text += chef.prepareFood(foodTwo);
		text += bartender.prepareDrink(drink);
		return text + "Here's your order!";
	}
	
	
}
