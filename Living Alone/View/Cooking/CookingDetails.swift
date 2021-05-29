//
//  CookingDetails.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingDetails: View {
    @Environment (\.presentationMode) private var presentationMode

    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 0){
                ZStack {
                    Text("Panqueca Americana")
                        .font(.system(size: 17, weight: .bold))
                    
                    HStack {
                        Spacer()
                        
                        Text("OK")
                            .font(.system(size: 17))
                            .padding(.trailing)
                            .foregroundColor(Color("CookingColor"))
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
                        Text("Ingredientes")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("CookingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    
                    VStack (alignment: .leading, spacing: 5) {
                        Text("1 e 1/4 xícara (chá) de farinha de trigo")
                        Text("1 colher (sopa) de açúcar")
                        Text("3 colheres (chá) de fermento em pó")
                        Text("2 ovos levemente batidos")
                        Text("1 xícara (chá) de leite")
                        Text("2 colheres (sopa) de manteiga derretida")
                        Text("pitada de sal")
                        Text("óleo")
                        HStack{
                            Spacer()
                        }
                    }
                    
                    HStack {
                        Text("Modo de Preparo")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("CookingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    
                    VStack (alignment: .leading, spacing: 5) {
                        Text("Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga.")
                        Text("Acrescente os líquidos aos secos, sem misturar em excesso. O ponto da massa não deve ser muito líquido, deve escorrer lentamente.")
                        Text("Aqueça e unte a frigideira com óleo, coloque a massa no centro, cerca de 1/4 xícara por panqueca.")
                        Text("Vire a massa para assar do outro lado e está pronto!")
                    }
                    
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct CookingDetails_Previews: PreviewProvider {
    static var previews: some View {
        CookingDetails()
    }
}
