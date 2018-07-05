package com.jpa.test.firstJPA;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RecipeModelController {
	
	@Autowired
	private RecipeModelService recipemodelservice;
	
	@RequestMapping(value="/getDao")
	public RecipeModel getDaoEntity(@RequestParam String description){		
		return recipemodelservice.sendDao(description);		
	}
	
}
