//
//  HomeCookingCard4.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct HomeCookingCard4: View {
    var body: some View {
        ZStack {
            Color("CookingColor")
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("Omelete")
                        .resizable()
                        .frame(width: 125, height: 133)
                }
            }
            
            VStack (alignment: .leading) {
                HStack (alignment: .top) {
                    
                    VStack {
                        Text("Omelete")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(width: 70, height: 41, alignment: .center)
                            .padding(.leading, 10)
                        
                        Text("\(4) min")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(width: 58, height: 17, alignment: .center)
                            .padding(.top, -15)
                    }
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(width: 126, height: 159)
        .clipShape(RoundedRectangle(cornerRadius: 17.0))
    }
}

struct HomeCookingCard4_Previews: PreviewProvider {
    static var previews: some View {
        HomeCookingCard4()
            .previewLayout(.fixed(width: 140, height: 180))
    }
}
