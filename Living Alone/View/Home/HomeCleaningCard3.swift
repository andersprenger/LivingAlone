//
//  HomeCleaningCard3.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeCleaningCard3: View {
    var body: some View {
        ZStack {
            Color("CleaningColor")
            
            HStack {
                Image("Aspirador")
                    .resizable()
                    .frame(width: 102, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            
            VStack (alignment: .trailing) {
                HStack (alignment: .top) {
                    Spacer()
                    
                    Text("Rotina De\nLimpeza\nQuarto")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 114, height: 61, alignment: .center)
                        .padding(.top)
                    
                }
                
                Spacer()
            }
            
            
        }
        .frame(width: 203, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 17.0))
    }
}

struct HomeCleaningCard3_Previews: PreviewProvider {
    static var previews: some View {
        HomeCleaningCard3()
            .previewLayout(.fixed(width: 210, height: 140))
    }
}
