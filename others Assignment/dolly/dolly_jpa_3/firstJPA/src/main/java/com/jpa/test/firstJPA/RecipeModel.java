package com.jpa.test.firstJPA;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="recipe")
public class RecipeModel {
	/*
	public RecipeModel(){		
	}
	
	public RecipeModel(long id, String description, String name_of_recipe) {
		this.id = id;
		this.description = description;
		this.name_of_recipe = name_of_recipe;
	}	
	*/	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO) //autoincrement
	private long id;   //can't be type = int
	
	@Column(name="description")
	private String description;
	
	@Column(name="name_of_recipe")
	private String name_of_recipe;

	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getName_of_recipe() {
		return name_of_recipe;
	}

	public void setName_of_recipe(String name_of_recipe) {
		this.name_of_recipe = name_of_recipe;
	}	
	
}
