//
//  CleaningTipModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation
import SwiftUI

enum CleaningCategories: String, Equatable, CaseIterable {
    case bedroom = "Bedroom"
    case bathroom = "Bathroom"
    case kitchen = "Kitchen"
}

struct CleaningTipModel: Tip {
    var id: UUID = UUID()

    var topic: Topic = Topic.cleaning
    var title: String
    var imageName: String
    
    var category: CleaningCategories
    
    var extendedTitle: String?
    var description: String?
    var instructionsHeader: String?
    
    var instructions: [String]
}
