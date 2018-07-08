package com.TTNIntern.cafe.Cafe;
import org.springframework.stereotype.Service;
@Service
public class BartenderService {
	public String PrepareDrinks(String drinks){
		return "Your drink "+ drinks +" is being prepared";		
	}
}
