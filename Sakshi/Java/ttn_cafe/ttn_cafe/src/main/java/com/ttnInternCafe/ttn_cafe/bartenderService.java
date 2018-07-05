package com.ttnInternCafe.ttn_cafe;

import org.springframework.stereotype.Service;

@Service
public class bartenderService {
	public String PrepareDrinks(String drinks){
		return "Your drink "+ drinks +" is being prepared";		
	}
}
