//
//  BigTopicsModel.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 24/05/21.
//

import Foundation
import SwiftUI


class BigTopicsModel: ObservableObject, Hashable, Identifiable{
    
    @Published var name : String
    @Published var subCategories : [SubCategorie]
    @Published var color: UIColor
    var id: UUID = UUID()
    
    static var bigTopicsArray : [BigTopicsModel] = {
        let mock1 = BigTopicsModel(name: "Alimentação", cor: UIColor.systemOrange)
        mock1.subCategories = SubCategorie.Alimentação
        
        let mock2 = BigTopicsModel(name: "Limpeza", cor: UIColor.systemBlue)
        mock2.subCategories = SubCategorie.Limpeza
        
        let mock3 = BigTopicsModel(name: "Organização", cor: UIColor.systemYellow)
        mock3.subCategories = SubCategorie.Organização
        
        return [mock1,mock2,mock3]
    }()
    
    
    init(name: String, cor : UIColor) {
        self.name = name
        self.subCategories = []
        self.color = cor
    }
    
    
    static func == (lhs: BigTopicsModel, rhs: BigTopicsModel) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}

