package com.Assignment.CafeByTTNinterns;

import org.springframework.stereotype.Service;

@Service
public class MenuService {

	public String getFoodMenu()
	{
		return "Burger \n Pizza";
	}
	
	public String getDrinkMenu()
	{
		return "Coke \n Pepsi";
	}
}
