package com.Assignment.CafeByTTNinterns;
import org.springframework.stereotype.Service;

@Service
public class ChefService {

	public String prepareFood(String food1,String food2)
	{
		return food1+","+food2;
	}
}
