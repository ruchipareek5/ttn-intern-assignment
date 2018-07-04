package com.jpa.test.firstJPA;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


@EnableJpaRepositories
public interface IRecipeModel extends JpaRepository<RecipeModel,Long> {	
	
	//RecipeModel findByName_of_recipe(String name_of_recipe);
	RecipeModel findByDescription(String description);
}
