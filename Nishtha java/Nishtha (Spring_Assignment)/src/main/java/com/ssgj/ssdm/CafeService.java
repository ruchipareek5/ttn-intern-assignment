package com.ssgj.ssdm;

import org.springframework.stereotype.Service;

@Service
public class CafeService {
	public String prepareFood(String item1,String item2)
	{
		return "Enjoy your food items : "+item1+" "+item2;
	}
}
