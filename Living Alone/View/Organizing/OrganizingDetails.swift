//
//  OrganizingDetails.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct OrganizingDetails: View {
    @Environment (\.presentationMode) private var presentationMode
    
    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 0){
                ZStack {
                    Text("Limpeza de Vidros")
                        .font(.system(size: 17, weight: .bold))
                    
                    HStack {
                        Spacer()
                        
                        Text("OK")
                            .font(.system(size: 17))
                            .padding(.trailing)
                            .foregroundColor(Color("OrganizingColor"))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                    }
                }
                .padding()
                
                Image("ContentPanqueca")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 252)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Como limpar janelas e vidros")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(Color("OrganizingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    
                    Text("Para adquirir uma boa aparência, as janelas e vidros necessitam de uma limpeza regular. O ideal é que a limpeza seja feita mensalmente.")
                        .padding(.bottom)
                    
                    HStack {
                        Text("Passo a Passo")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("OrganizingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    VStack (alignment: .leading, spacing: 10) {
                        Text("Os passos para a limpeza dos vidros são bastante simples. A forma e a ordem em que são feitos é que garante a limpeza eficiente. Veja os três passos que você deve seguir para deixar os vidros limpinhos:")
                        Text("1. Antes de limpar os vidros é necessário limpar as janelas e aberturas primeiro. Uma sugestão é passar um pincel de cerdas largas entre as frestas da janela para eliminar o pó. Também é possível aspirar as partes de mais difícil acesso, principalmente os cantos;")
                        Text("2. Limpe o vidro com uma solução de 5 litros de água para 1 colher de sopa de vinagre ou detergente neutro e 1 colher de sopa de álcool. Passe esta solução com o lado macio da esponja, enxague e seque. Para facilitar essa etapa veja as dicas e truques do tópico abaixo;")
                        Text("3. Aplique o limpa vidros e seque para finalizar.")
                    }
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct OrganizingDetails_Previews: PreviewProvider {
    static var previews: some View {
        OrganizingDetails()
    }
}
