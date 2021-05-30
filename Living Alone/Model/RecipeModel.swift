//
//  RecipeModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation
import SwiftUI


enum CookingCategories: String, Equatable, CaseIterable {
    case breakfest = "Breakfest"
    case lunch = "Lunch"
    case desert = "Desert"
}

struct RecipeModel: Tip {
    var id: UUID = UUID()
    
    var topic: Topic = Topic.cooking
    var title: String
    var imageName: String

    var category: CookingCategories
    
    var time: Int
    var servings: Int
    var vegan: Bool
    
    var ingredients: [String]
    var structions: String
}
