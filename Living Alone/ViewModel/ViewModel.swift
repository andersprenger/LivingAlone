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
    
    init() { // inserir dados abaixo!
        let omelete = RecipeTipModel(
            title: "Omelete",
            imageName: "OmeleteContent",
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

        let arroz = RecipeTipModel(
            title: "Arroz",
            imageName: "ArrozContent",
            category: .lunch,
            time: 20,
            servings: 3,
            vegetarian: true,
            ingredients: ["1 xícara de arroz lavado",
                          "2 xícaras de água fervente",
                          "1 dente de alho amassado",
                          "1/4 de cebola picada",
                          "azeite o suficiente",
                          "sal a gosto"],
            structions: "Refogue o alho e a cebola no azeite.\nColoque o arroz e deixe fritar por cerca de 30 segundos.\nAdicione a água fervente e o sal.\nAbaixe o fogo e deixe cozinhar até a água quase secar\nTampe a panela e aguarde cerca de 20 minutos antes de servir.\nSe desejar fazer mais, é só seguir as proporções, principalmente da água.")
        
        let panquecaAmericana = RecipeTipModel(
            title: "Panqueca Americana",
            imageName: "PanquecasContent",
            category: .desert,
            time: 40,
            servings: 8,
            vegetarian: false,
            ingredients: ["1 e 1/4 xícara (chá) de farinha de trigo",
                          "1 colher (sopa) de açúcar",
                          "3 colheres (chá) de fermento em pó",
                          "2 ovos levemente batidos",
                          "1 xícara (chá) de leite",
                          "2 colheres (sopa) de manteiga derretida",
                          "pitada de sal",
                          "óleo"],
            structions: "Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga.\nAcrescente os líquidos aos secos, sem misturar em excesso. O ponto da massa não deve ser muito líquido, deve escorrer lentamente.\nAqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.\nVire a massa para assar do outro lado e está pronto!")
        
        tipsList.append(omelete)
        tipsList.append(arroz)
        tipsList.append(panquecaAmericana)
    }
}
