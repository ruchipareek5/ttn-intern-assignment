package com.Assignment.CafeByTTNinterns;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class callWaiterController {

	@RequestMapping("/callWaiter")
	public String callWaiter()
	{
		return "Would you like to place an order?";
	}
}
