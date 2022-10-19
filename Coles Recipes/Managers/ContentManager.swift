//
//  ContentManager.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import Foundation

struct ContentManager {
    static let baseUrl: URL = URL(string: "https://coles.com.au/")!
    
    static func fetchRecipesFromBundle(resourceName: String) -> Recipes? {
        guard let path = Bundle.main.path(forResource: resourceName, ofType: "json"),
              let jsonData = try? NSData(contentsOfFile: path, options: .mappedIfSafe)
        else {
            return nil
        }
        
        return try? JSONDecoder().decode(Recipes.self, from: Data(referencing: jsonData))
    }
}
