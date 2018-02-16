//
//  RecipesPresenter.swift
//  RecipesList
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation

class RecipesPresenter {
    private let recipeService: RecipeService
    weak private var recipeViewLogic: RecipeViewLogic?
    
    init(service: RecipeService) {
        recipeService = service
    }
    
    func getRecipes() {
        recipeViewLogic?.startLoading()
        
        recipeService.getRecipesList { [weak self] (recipes) in
            self?.recipeViewLogic?.stopLoading()
            
            if recipes.isEmpty {
                self?.recipeViewLogic?.clearRecipes()
            } else {
                let recipesData = recipes.map { RecipeViewData(title: $0.name, description: $0.fullIngredients) }
                self?.recipeViewLogic?.setRecipes(data: recipesData)
            }
        }
    }
    
    func attachView(_ view: RecipeViewLogic) {
        recipeViewLogic = view
    }
}
