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
    var id: UUID = UUID()
    
    static var bigTopicsArray : [BigTopicsModel] = {
        let mock1 = BigTopicsModel(name: "Limpeza")
        let mock2 = BigTopicsModel(name: "Alimentação")
        let mock3 = BigTopicsModel(name: "Organização")
        
        return [mock1,mock2,mock3]
    }()
    
    
    init(name: String) {
        self.name = name
    }
    
    
    static func == (lhs: BigTopicsModel, rhs: BigTopicsModel) -> Bool {
        return lhs.name == rhs.name
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }
    
}

