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
    @Published var description : String
    
    
    var id: UUID = UUID()
    
    
    static var cafeDaManha: [Item] = {
        let mock1 = Item(name: "Panqueca Americana")
        mock1.description = "Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga. Acrescente os líquidos aos secos, sem misturar em excesso. O ponto da massa não deve ser muito líquido, deve escorrer lentamente. Aqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.Vire a massa para assar do outro lado e está pronto! "
        let mock2 = Item(name: "Ovos")
        let mock3 = Item(name: "Crepioca")
        let mock4 = Item(name: "Torrada")
        
        return [mock1,mock2,mock3,mock4]
    }()
    
    
    
    init(name: String) {
        self.name = name
        self.description = ""
        
    }
    
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}

