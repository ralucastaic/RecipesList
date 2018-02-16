//
//  RecipeViewLogic.swift
//  RecipesList
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation

protocol RecipeViewLogic: class {
    func startLoading()
    func stopLoading()
    
    func setRecipes(data: [RecipeViewData])
    func clearRecipes()
}
