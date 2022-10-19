//
//  ContentView.swift
//  Coles Recipes
//
//  Created by Alex Guglielmino on 19/10/2022.
//

import SwiftUI

// MARK: - Content
struct RecipeView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Recipe title")
                
                Text("Recipe subtitle")
                
                Rectangle()
                    .frame(maxWidth: .infinity)
                    .frame(height: 300)
                
                // Recipe Details
                HStack {
                    VStack {
                        Text("Serves")
                        Text(String(8))
                    }
                    
                    VStack {
                        Text("Prep")
                        Text("15m")
                    }
                    
                    VStack {
                        Text("Cooking")
                        Text("4h 30m")
                    }
                }
                
                // Recipe Ingredients
                Text("Ingredients")
                
                Label("First Ingredient", systemImage: "chevron.forward")
                Label("Second Ingredient", systemImage: "chevron.forward")
                Label("Third Ingredient", systemImage: "chevron.forward")
            }
            .padding()
        }
    }
}

// MARK: - Previews
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView()
    }
}
