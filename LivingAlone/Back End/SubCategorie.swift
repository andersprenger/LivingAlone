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
        mock2.items = Item.almoço
        let mock3 = SubCategorie(name: "Sobremesa")
        mock3.items = Item.sobremesa
        
        return [mock1,mock2,mock3]
    }()
    static var Limpeza : [SubCategorie] = {
        let mock1 = SubCategorie(name: "Roupa")
        mock1.items = Item.roupa
        let mock2 = SubCategorie(name: "Casa")
        mock2.items = Item.casa
        
        
        return [mock1,mock2]
    }()
    static var Diversos : [SubCategorie] = {
        let mock1 = SubCategorie(name: "Organização")
        mock1.items = Item.organização
        let mock2 = SubCategorie(name: "Outros")
        mock2.items = Item.outros
        
        
        return [mock1,mock2]
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
