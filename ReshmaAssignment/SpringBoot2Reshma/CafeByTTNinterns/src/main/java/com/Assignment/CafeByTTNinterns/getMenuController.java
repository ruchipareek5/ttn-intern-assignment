package com.Assignment.CafeByTTNinterns;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class getMenuController {
	@Autowired
	private MenuService menuService;
	@RequestMapping("/getFoodMenu")
	public String getFoodMenu()
	{
		return menuService.getFoodMenu();
	}
	@RequestMapping("/getDrinkMenu")
	public String getDrinkMenu()
	{
		return menuService.getDrinkMenu();
	}

}
