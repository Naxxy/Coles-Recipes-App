//
//  RecipeTest.swift
//  Coles RecipesTests
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import XCTest

final class RecipeTest: XCTestCase {
    private let recipeJSON: String = """
        {
          "dynamicTitle": "Curtis Stone's tomato and bread salad with BBQ eggplant and capsicum",
          "dynamicDescription": "For a crowd-pleasing salad, try this tasty combination of fresh tomato, crunchy bread and BBQ veggies. It’s topped with fresh basil and oregano for a finishing touch. ",
          "dynamicThumbnail": "/content/dam/coles/inspire-create/thumbnails/Tomato-and-bread-salad-480x288.jpg",
          "dynamicThumbnailAlt": "Tomato, bread and eggplant salad served in a large plate topped with basil leaves with vinaigrette on the side",
          "recipeDetails": {
            "amountLabel": "Serves",
            "amountNumber": 8,
            "prepLabel": "Prep",
            "prepTime": "15m",
            "prepNote": "+ cooling time",
            "cookingLabel": "Cooking",
            "cookingTime": "15m",
            "cookTimeAsMinutes": 15,
            "prepTimeAsMinutes": 15
          },
          "ingredients": [
            {
              "ingredient": "1 cup (250ml) extra virgin olive oil, divided"
            },
            {
              "ingredient": "4 cups (240g) 2cm-pieces day-old Coles Bakery Stone Baked by Laurent Pane Di Casa"
            },
            {
              "ingredient": "4 Lebanese eggplants, halved lengthways"
            }
          ]
        }
    """
    private let recipeDetails = RecipeDetails(
        amountLabel: "Serves",
        amountNumber: 8,
        prepLabel: "Prep",
        prepTime: "15m",
        prepNote: "+ cooling time",
        cookingLabel: "Cooking",
        cookingTime: "15m",
        cookTimeAsMinutes: 15,
        prepTimeAsMinutes: 15
    )
    private let ingredients = [
        Ingredient(ingredient: "1 cup (250ml) extra virgin olive oil, divided"),
        Ingredient(ingredient: "4 cups (240g) 2cm-pieces day-old Coles Bakery Stone Baked by Laurent Pane Di Casa"),
        Ingredient(ingredient: "4 Lebanese eggplants, halved lengthways")
    ]
    
    func testInitFromJSON() throws {
        let data = recipeJSON.data(using: .utf8)!
        
        let jsonDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        let recipe = Recipe(json: jsonDictionary)
        
        if let recipe = recipe {
            // Check primitives
            XCTAssertEqual(recipe.dynamicTitle, jsonDictionary["dynamicTitle"] as? String)
            XCTAssertEqual(recipe.dynamicDescription, jsonDictionary["dynamicDescription"] as? String)
            XCTAssertEqual(recipe.dynamicThumbnail, jsonDictionary["dynamicThumbnail"] as? String)
            XCTAssertEqual(recipe.dynamicThumbnailAlt, jsonDictionary["dynamicThumbnailAlt"] as? String)
            
            // Check Recipe Details
            XCTAssertEqual(recipe.recipeDetails, recipeDetails)
            
            // Check Ingredients
            XCTAssertEqual(recipe.ingredients, ingredients)
        } else {
            XCTAssertNotNil(recipe)
        }
    }
}
