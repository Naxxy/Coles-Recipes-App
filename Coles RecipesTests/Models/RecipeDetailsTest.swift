//
//  RecipeDetailsTest.swift
//  Coles RecipesTests
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import XCTest

final class RecipeDetailsTest: XCTestCase {
    private let recipeDetailsJSON =
        """
        {
                "amountLabel": "Serves",
                "amountNumber": 8,
                "prepLabel": "Prep",
                "prepTime": "15m",
                "prepNote": "+ cooling time",
                "cookingLabel": "Cooking",
                "cookingTime": "15m",
                "cookTimeAsMinutes": 15,
                "prepTimeAsMinutes": 15
        }
        """

    func testInitFromJSON() throws {
        let data = recipeDetailsJSON.data(using: .utf8)!
        
        let jsonDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
        let recipeDetails = RecipeDetails(json: jsonDictionary)
        
        if let recipeDetails = recipeDetails {
            XCTAssertEqual(recipeDetails.amountLabel, jsonDictionary["amountLabel"] as? String)
            XCTAssertEqual(recipeDetails.amountNumber, jsonDictionary["amountNumber"] as? Int)
            XCTAssertEqual(recipeDetails.prepLabel, jsonDictionary["prepLabel"] as? String)
            XCTAssertEqual(recipeDetails.prepTime, jsonDictionary["prepTime"] as? String)
            XCTAssertEqual(recipeDetails.prepNote, jsonDictionary["prepNote"] as? String)
            XCTAssertEqual(recipeDetails.cookingLabel, jsonDictionary["cookingLabel"] as? String)
            XCTAssertEqual(recipeDetails.cookingTime, jsonDictionary["cookingTime"] as? String)
            XCTAssertEqual(recipeDetails.cookTimeAsMinutes, jsonDictionary["cookTimeAsMinutes"] as? Int)
            XCTAssertEqual(recipeDetails.prepTimeAsMinutes, jsonDictionary["prepTimeAsMinutes"] as? Int)
        } else {
            XCTAssertNotNil(recipeDetails)
        }
    }
}
