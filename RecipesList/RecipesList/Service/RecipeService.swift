//
//  RecipeService.swift
//  RecipesList
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation

class RecipeService {
    func getRecipesList(callback: @escaping ([Recipe]) -> ()) {
        let recipes = [
            Recipe(name: "Guacamone", ingredients: ["avocado", "rosii", "ulei masline", "sare"]),
            Recipe(name: "Hummus", ingredients: ["naut", "tahini", "usturoi", "lamaie", "ulei masline", "sare"]),
            Recipe(name: "Banana Bread", ingredients: ["banana", "lapte migdale", "apa", "unt arahide"])
        ]

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0) {
            callback(recipes)
        }
    }
}
