package com.ttnInternCafe.ttn_cafe;

import org.springframework.stereotype.Service;

@Service
public class chefService {
	public String PrepareFood(String food1, String food2){
		return "Your food "+ food1 + " " + food2 + " is being prepared";		
}
}