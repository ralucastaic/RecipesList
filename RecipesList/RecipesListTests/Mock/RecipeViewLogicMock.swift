//
//  RecipeViewLogicMock.swift
//  RecipesListTests
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import Foundation
@testable import RecipesList

class RecipeViewLogicMock: RecipeViewLogic {
    var startLoadingCalled = false
    var stopLoadingCalled = false
    var setRecipesCalled = false
    var clearRecipesCalled = false
    
    func startLoading() {
        startLoadingCalled = true
    }
    
    func stopLoading() {
        stopLoadingCalled = true
    }
    
    func setRecipes(data: [RecipeViewData]) {
        setRecipesCalled = true
    }
    
    func clearRecipes() {
        clearRecipesCalled = true
    }
}
