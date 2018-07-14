package com.ttn.cafe;

import org.springframework.stereotype.Service;

@Service
public class ChefService {
	public String prepareFood(String food) {
		return "Preparing your " + food + "!";
	}
}
