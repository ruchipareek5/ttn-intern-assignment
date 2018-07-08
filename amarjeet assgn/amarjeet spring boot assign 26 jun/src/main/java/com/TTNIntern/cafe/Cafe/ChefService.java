package com.TTNIntern.cafe.Cafe;
import org.springframework.stereotype.Service;
@Service
public class ChefService {
	public String PrepareFood(String food1, String food2){
		return "Your food "+ food1 + " " + food2 + " is being prepared";		
	}
}
