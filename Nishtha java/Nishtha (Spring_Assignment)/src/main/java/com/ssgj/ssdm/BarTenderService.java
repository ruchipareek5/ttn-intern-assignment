package com.ssgj.ssdm;

import org.springframework.stereotype.Service;

@Service
public class BarTenderService {
	public String prepareDrink(String drink)
	{
		return "Enjoy your drink:"+drink;
	}

}
