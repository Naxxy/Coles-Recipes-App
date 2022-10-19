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

    func testDecodeFromJSON() throws {
        let data = ingredientJSON.data(using: .utf8)!
        
        let jsonDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        let ingredient = try! JSONDecoder().decode(Ingredient.self, from: data)
        
        XCTAssertEqual(ingredient.ingredient, jsonDictionary["ingredient"] as? String)
    }
}
