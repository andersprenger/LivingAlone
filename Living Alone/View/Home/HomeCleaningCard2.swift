//
//  HomeCleaningCard2.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeCleaningCard2: View {
    var body: some View {
        ZStack {
            Color("CleaningColor")
            
            HStack {
                Image("SabaoNeutro")
                    .resizable()
                    .frame(width: 102, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                Spacer()
            }
            
            VStack (alignment: .trailing) {
                HStack (alignment: .top) {
                    Spacer()
                    
                    Text("5 Truques De\nLmpeza Na\nCozinha")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.trailing)
                        .frame(width: 114, height: 61, alignment: .center)
                        .padding([.top,.trailing])
                }
                
                Spacer()
            }
            
            
        }
        .frame(width: 203, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 17.0))
    }
}

struct HomeCleaningCard2_Previews: PreviewProvider {
    static var previews: some View {
        HomeCleaningCard2()
            .previewLayout(.fixed(width: 210, height: 140))
    }
}
