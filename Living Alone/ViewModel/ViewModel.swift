//
//  ViewModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 29/05/21.
//

import Foundation

class ViewModel {
    static let shared: ViewModel = ViewModel()
    
    var tipsList: [Tip] = []
    
    init() {
        // inserir dados abaixo!
        
        let omelete = RecipeTipModel(
            title: "Omelete",
            imageName: "Omelete",
            category: .breakfest,
            time: 4,
            servings: 1,
            vegetarian: false,
            ingredients: ["2 ovos",
                          "1 pitada de sal",
                          "1 fatia de presunto",
                          "2 fatias de queijo",
                          "tempero verde a gosto",
                          "caldo de galinha a gosto"],
            structions: "Bata os 2 ovos, pode ser na batedeira ou não.\nApós ter batido bem, coloque-o na frigideira já untada com óleo, acrescente o sal, o presunto picado em quadradinhos e as duas fatias de queijo (não precisa picar o queijo).\nColoque os temperos a gosto, espere ficar firme, e vire o omelete.\nEstá pronto um omelete delicioso, bom apetite!")
        
        tipsList.append(omelete)
    }
}
