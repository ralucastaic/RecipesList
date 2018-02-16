//
//  RecipeServiceMock.swift
//  RecipesListTests
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation
@testable import RecipesList

class RecipeServiceMock: RecipeService {
 
    private let recipes: [Recipe]
    
    init(recipes: [Recipe]) {
        self.recipes = recipes
    }
    
    override func getRecipesList(callback: @escaping ([Recipe]) -> ()) {
        callback(recipes)
    }
}
