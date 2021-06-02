//
//  OrganizingViewModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 02/06/21.
//

import Foundation

class OrganizingViewModel: ObservableObject {
    @Published var organizingTipsList: [OrganizingTipModel] = []
    
    func filterOrganinzingTips(category: OrganizingCategories) -> [OrganizingTipModel] {
        organizingTipsList.filter { tip in
            tip.category == category
        }
    }
    
    init() { // inserir dados abaixo!
        
        // MARK: -- Organização
        
        let dicasGerais = OrganizingTipModel(
            title: "Dicas Gerais",
            imageName: "ContentCleaning",
            category: .closet,
            instructions: ["A melhor maneira de guardar bolsas é uma dentro da outra.",
                           "O objetivo de um presente se cumpre na hora em que o recebemos. Por isso, não tenha medo de se desfazer de lembranças que recebeu e nunca usou.",
                           "Você guarda um monte de fios e cabos que não sabe de onde são? Jogue-os no lixo. Só mantenha aqueles cuja função você possa identificar.",
                           "Qual foi a última vez que você abriu um manual de instruções? Eles não servem para nada.",
                           "Esvazie o conteúdo daquelas caixas onde guarda objetos aleatórios, como botões soltos, prendedores de cabelo, moedas, canetas e bloquinhos promocionais.",
                           "Organize as roupas na vertical. O resultado final é algo como uma biblioteca de roupas."])
        
        let ganchosPrateleiras = OrganizingTipModel(
            title: "Ganchos e plateleiras",
            imageName: "ContentCleaning",
            category: .bedroom,
            instructions: ["Ganhos e prateleiras são uma ótima pedida para sua casa. Você pode botá-los por todas as partes da casa e aproveitar muito espaço por isso.\nLocais interessantes para se por são em cima das portas( prateleiras em cima de portas ganham muito espaço e dão um design difetente para a casa), do lado de móveis e em paredes livres. Além dessas opções, um conjunto de ganchos e prateleiras na entrada de sua casa pode criar um visual diferenciado para sua casa, além de ser muito cômodo para estar sempre pronto para entrar e sair."])
        
        let argolasChuveiro = OrganizingTipModel(
            title: "Argolas de chuveiro para organização",
            imageName: "ContentCleaning",
            category: .closet,
            instructions: ["Ao invés de jogar o cinto, a gravata ou qualquer roupa pequena nos cantos, você pode usar argolas das cortinas do chuveiro e juntá-las com um cabide para fazer um porta coisas. "])
        
        let mesaTenis = OrganizingTipModel(
            title: "Mesa de tênis embaixo da cama",
            imageName: "ContentCleaning",
            category: .bedroom,
            instructions: ["Bote os tênis embaixo da cama e faça uma mesa ou caixa deslizante para melhor organizá-los"])
        
        
        // organização
        organizingTipsList.append(dicasGerais)              // 0
        organizingTipsList.append(ganchosPrateleiras)       // 1
        organizingTipsList.append(argolasChuveiro)          // 2
        organizingTipsList.append(mesaTenis)                // 3
    }
}
