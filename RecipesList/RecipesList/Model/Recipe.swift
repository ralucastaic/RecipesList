//
//  Recipe.swift
//  RecipesList
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation

struct Recipe {
    let name: String
    let ingredients: [String]
    
    var fullIngredients: String {
        return ingredients.first ?? "first"
    }
}
