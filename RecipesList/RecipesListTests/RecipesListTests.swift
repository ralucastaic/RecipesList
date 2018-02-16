//
//  RecipesListTests.swift
//  RecipesListTests
//
//  Created by RalucaS on 1/18/18.
//  Copyright © 2018 RalucaS. All rights reserved.
//

import XCTest
@testable import RecipesList

class RecipesListTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDisplayEmptyRecipesList() {
        let emptyRecipesListService = RecipeServiceMock(recipes: [])
        
        let view = RecipeViewLogicMock()
        let presentor = RecipesPresenter(service: emptyRecipesListService)
        presentor.attachView(view)
        presentor.getRecipes()
        
        XCTAssertFalse(view.setRecipesCalled, "Setting recipes is called")
        XCTAssertTrue(view.clearRecipesCalled, "Recipes are empty")
    }
    
    func testDisplayFullRecipesList() {
        let recipes = [Recipe.init(name: "Title", ingredients: [])]
        let recipesListService = RecipeServiceMock(recipes: recipes)
        
        let view = RecipeViewLogicMock()
        let presentor = RecipesPresenter(service: recipesListService)
        presentor.attachView(view)
        presentor.getRecipes()
        
        XCTAssertTrue(view.setRecipesCalled, "Setting recipes not called")
        XCTAssertFalse(view.clearRecipesCalled, "Recipes should not be empty")
    }
}
