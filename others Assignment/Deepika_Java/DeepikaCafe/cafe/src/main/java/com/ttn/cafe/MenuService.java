package com.ttn.cafe;

import org.springframework.stereotype.Service;

@Service
public class MenuService {
	public String getMenu(String type) {
		String items = "";
		if (type.equals("food"))
			items += "Honey Chilli Potato, Thai Green Chilli, Lasagna";
		else if (type.equals("drinks"))
			items += "Carlsberg, Mojito, Rum & Coke";
		else
			items += "We're fresh out of " + type + "!";
		return items;
	}
}
