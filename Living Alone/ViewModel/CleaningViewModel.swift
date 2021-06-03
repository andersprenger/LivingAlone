//
//  CleaningViewModel.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 02/06/21.
//

import Foundation

class CleaningViewModel: ObservableObject {
    @Published var cleaningTipsList: [CleaningTipModel] = []
    
    func filterCleaningTips(category: CleaningCategories) -> [CleaningTipModel] {
        cleaningTipsList.filter { tip in
            tip.category == category
        }
    }
    
    init() { // inserir dados abaixo!
               
        // MARK: -- limpeza roupa
        
        let lavarRoupa = CleaningTipModel(
            title: "Dicas para Lavar roupa",
            imageName: "ContentCleaning",
            category: .clothes,
            extendedTitle: nil,
            description: nil,
            instructionsHeader: nil,
            instructions: ["Separe as roupas: Separe as roupas pela cor, pelo tipo e nível de sujeira.",
                           "Pré-lavagem: Caso alguma peça esteja manchada ou encardida, faça uma pré lavagem deixando-a de molho.",
                           "Teste antes: Teste suas roupas novas para saber se soltam a cor.",
                           "Proteja suas roupas: use sacos protetores nas suas peças mais delicadas ou nas que soltam pelos, fiapos e bolinhas.",
                           "Remova os adereços: Remova cintos, broches, e qualquer adereço antes de lavar a peça.",
                           "Botões e zíperes: abotoe todos os botões e feche todos os zíperes para evitar estragar sua roupa e a máquina.",
                           "Verifique os bolsos: Verifique os boloso antes de começar a lavagem."])
        
        let tirarMachas = CleaningTipModel(
            title: "Como tirar manchas da roupa",
            imageName: "ContentCleaning",
            category: .clothes,
            extendedTitle: "Como tirar manchas da roupa",
            description: "Antes de iniciar o processo de lavagem, seja à mão ou na máquina de lavar, é necessário assegurar a remoção das manchas."
            ,
            instructionsHeader: "Antes de iniciar o processo de lavagem, seja à mão ou na máquina de lavar, é necessário assegurar a remoção das manchas.",
            instructions: ["Umedeça a peça manchada.",
                           "Limpe o vidro com uma solução de 5 litros de água para 1 colher de sopa de vinagre ou detergente neutro e 1 colher de sopa de álcool. Passe esta solução com o lado macio da esponja, enxague e seque. Para facilitar essa etapa veja as dicas e truques do tópico abaixo;",
                           "Aplique o limpa vidros e seque para finalizar."])
        
        // MARK: -- limpeza casa
        
        let limpezaVidros = CleaningTipModel(
            title: "Limpeza de Vidros",
            imageName: "ContentCleaning",
            category: .house,
            extendedTitle: nil,
            description: "Para adquirir uma boa aparência, as janelas e vidros necessitam de uma limpeza regular. O ideal é que a limpeza seja feita mensalmente.",
            instructionsHeader: "Os passos para a limpeza dos vidros são bastante simples. A forma e a ordem em que são feitos é que garante a limpeza eficiente. Veja os três passos que você deve seguir para deixar os vidros limpinhos:",
            instructions: ["Antes de limpar os vidros é necessário limpar as janelas e aberturas primeiro. Uma sugestão é passar um pincel de cerdas largas entre as frestas da janela para eliminar o pó. Também é possível aspirar as partes de mais difícil acesso, principalmente os cantos;",
                           "Limpe o vidro com uma solução de 5 litros de água para 1 colher de sopa de vinagre ou detergente neutro e 1 colher de sopa de álcool. Passe esta solução com o lado macio da esponja, enxague e seque. Para facilitar essa etapa veja as dicas e truques do tópico abaixo;",
                           "Aplique o limpa vidros e seque para finalizar."])
        
        let limpezaQuarto = CleaningTipModel(
            title: "Rotina Limpeza Quarto",
            imageName: "ContentCleaning",
            category: .house,
            extendedTitle: nil,
            description: "O quarto é um cômodo da casa que precisa de atenção quando o assunto é limpeza. Isso porque o local também acumula sujeiras e ácaros, que afetam o bem-estar e a saúde respiratória de quem dorme no ambiente. E para evitar que isso aconteça, é necessário definir uma rotina de limpeza.",
            instructionsHeader: nil,
            instructions: ["Antes de limpar os vidros é necessário limpar as janelas e aberturas primeiro. Uma sugestão é passar um pincel de cerdas largas entre as frestas da janela para eliminar o pó. Também é possível aspirar as partes de mais difícil acesso, principalmente os cantos;",
                           "Limpe o vidro com uma solução de 5 litros de água para 1 colher de sopa de vinagre ou detergente neutro e 1 colher de sopa de álcool. Passe esta solução com o lado macio da esponja, enxague e seque. Para facilitar essa etapa veja as dicas e truques do tópico abaixo;",
                           "Aplique o limpa vidros e seque para finalizar."])
        
        // limpeza roupa
        cleaningTipsList.append(lavarRoupa)         // 0
        cleaningTipsList.append(tirarMachas)        // 1
        
        // limpeza casa
        cleaningTipsList.append(limpezaVidros)      // 2
        cleaningTipsList.append(limpezaQuarto)      // 3
    }
}
