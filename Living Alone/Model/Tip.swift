//
//  TipModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation

enum Topic {
    case cooking
    case cleaning
    case organizing
}

protocol Tip: Hashable, Identifiable {
    var topic: Topic { get }
    var title: String { get }
    var imageName: String { get }
}
