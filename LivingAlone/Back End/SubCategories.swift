//
//  SubCategories.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 25/05/21.
//

import Foundation
import SwiftUI


class SubCategorie: ObservableObject, Hashable, Identifiable{
    
    @Published var name : String
    var id: UUID = UUID()
    @Published var items: [Item]
    static var Alimentação : [SubCategorie] = {
        let mock1 = SubCategorie(name: "Café da manhã")
        mock1.items = Item.cafeDaManha
        let mock2 = SubCategorie(name: "Almoço")
        let mock3 = SubCategorie(name: "Sobremesa")
        let mock4 = SubCategorie(name: "Outros")
        
        return [mock1,mock2,mock3,mock4]
    }()
    
    init(name: String) {
        self.name = name
        self.items = []
    }
    
    
    static func == (lhs: SubCategorie, rhs: SubCategorie) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}
