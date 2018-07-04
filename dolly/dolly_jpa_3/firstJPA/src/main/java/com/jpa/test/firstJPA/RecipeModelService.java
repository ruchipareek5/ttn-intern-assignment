package com.jpa.test.firstJPA;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeModelService {
	
	@Autowired
	private IRecipeModel reciperepo;
	
	public RecipeModel sendDao(String description){
		//return reciperepo.findByname_of_recipe(recipe);
		return reciperepo.findByDescription(description);
	}
}
