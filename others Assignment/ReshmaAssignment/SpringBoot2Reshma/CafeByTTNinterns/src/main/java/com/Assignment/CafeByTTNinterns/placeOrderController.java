package com.Assignment.CafeByTTNinterns;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class placeOrderController {
	@Autowired
	private ChefService chefService;
	@Autowired
	private BartenderService bartenderService;
	@RequestMapping("/placeOrder")
	public String placeOrder(@RequestParam String food1,@RequestParam String food2,@RequestParam String drink)
	{
		String chefService1 = chefService.prepareFood(food1,food2);
		String bartenderService1 = bartenderService.prepareDrink(drink);
		return "Prepared "+chefService1+" and "+ bartenderService1;
	}
}
