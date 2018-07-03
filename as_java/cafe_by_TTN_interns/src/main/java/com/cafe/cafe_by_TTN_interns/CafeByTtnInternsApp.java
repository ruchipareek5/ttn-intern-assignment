package com.cafe.cafe_by_TTN_interns;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RestController
public class CafeByTtnInternsApp 
{
	
@Autowired
private CafeService CafeService;


@RequestMapping("/get-menu")
public String get_menu()
{
	return "**MENU** ";
}
@RequestMapping("/call-waiter")
public String call_waiter()
{
	return "Would You Like To Place An Order?";
}

@RequestMapping("/place-order")
public String placeOrder(@RequestParam String food1,@RequestParam String food2,@RequestParam String drink)
{
	return CafeService.Preparemenu(food1,food2,drink)  ;
}
}

