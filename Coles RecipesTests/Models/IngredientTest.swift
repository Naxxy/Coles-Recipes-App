//
//  IngredientTest.swift
//  Coles RecipesTests
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import XCTest

final class IngredientTest: XCTestCase {
    let ingredientJSON =
    """
        {
          "ingredient": "1 cup (250ml) extra virgin olive oil, divided"
        }
    """

    func testInitFromJSON() throws {
        let data = ingredientJSON.data(using: .utf8)!
        
        let jsonDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        let ingredient = Ingredient(json: jsonDictionary)
        
        if let ingredient = ingredient {
            XCTAssertEqual(ingredient.ingredient, jsonDictionary["ingredient"] as? String)
        } else {
            XCTAssertNotNil(ingredient)
        }
    }
}
