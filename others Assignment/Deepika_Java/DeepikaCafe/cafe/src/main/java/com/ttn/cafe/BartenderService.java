package com.ttn.cafe;

import org.springframework.stereotype.Service;

@Service
public class BartenderService {
	public String prepareDrink(String drink) {
		return "Preparing your " + drink + "!";
	}
}
