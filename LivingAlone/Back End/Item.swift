//
//  SubTopics.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 25/05/21.
//

import Foundation
import SwiftUI



class Item: ObservableObject, Hashable, Identifiable{
    
    @Published var name : String
    var id: UUID = UUID()
    
    static var cafeDaManha: [Item] = {
        let mock1 = Item(name: "Panqueca Americana")
        let mock2 = Item(name: "Ovos")
        let mock3 = Item(name: "Crepioca")
        let mock4 = Item(name: "Torrada")
        
        return [mock1,mock2,mock3,mock4]
    }()
    
    
    
    init(name: String) {
        self.name = name
        
        
    }
    
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}

