//
//  Ingredient.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct Ingredient: Decodable, Equatable {
    let ingredient: String
}

extension Ingredient {
    init?(json: [String: Any]) {
        guard let ingredient = json["ingredient"] as? String else {
            return nil
        }
        
        self.ingredient = ingredient
    }
}
