//
//  HomeCookingCard5.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct HomeCookingCard5: View {
    var body: some View {
        ZStack {
            Color("CookingColor")
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image("Mousse")
                        .resizable()
                        .frame(width: 109, height: 123)
                }
            }
            
            VStack (alignment: .leading) {
                HStack (alignment: .top) {
                    
                    VStack {
                        Text("Mousse")
                            .font(.system(size: 17, weight: .bold))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .frame(width: 80, height: 41, alignment: .center)
                            .padding(.leading, 5)
                        
                        Text("\(120) min")
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

struct HomeCookingCard5_Previews: PreviewProvider {
    static var previews: some View {
        HomeCookingCard5()
            .previewLayout(.fixed(width: 140, height: 180))
    }
}
