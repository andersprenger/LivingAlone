//
//  OrganizingTipModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation

enum OrganizingCategories: String, Equatable, CaseIterable {
    case bedroom = "Bedroom"
    case closet = "Closet"
}

struct OrganizingTipModel: Tip {
    var id: UUID = UUID()

    var topic: Topic = .organizing
    var title: String
    var imageName: String
    
    var category: OrganizingCategories
    
    var extendedTitle: String?
    var description: String?
    var instructionsHeader: String?
    
    var instructions: [String]
}
