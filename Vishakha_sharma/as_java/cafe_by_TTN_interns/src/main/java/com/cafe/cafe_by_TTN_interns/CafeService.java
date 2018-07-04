package com.cafe.cafe_by_TTN_interns;

import org.springframework.stereotype.Service;

@Service
public class CafeService {

	public  String Preparemenu (String food1,String food2,String drink)
	{
		return"Hii your meal is ready" + food1 +food2 + drink;
	}

}
