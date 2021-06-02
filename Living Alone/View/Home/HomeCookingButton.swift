//
//  HomeCookingButton.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeCookingButton: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 100, height: 55)
                    .foregroundColor(Color("CookingColor"))
                
                Image("HomeButtonCooking")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 95, height: 95)
                    .offset(CGSize(width: 0, height: -6))
            }
            .frame(width: 100, height: 100)
            
            
            Text("Cozinha")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color("DynamicColor"))
                .padding(.top, -14)
        }
    }
}

struct HomeCookingButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeCookingButton()
            .previewLayout(.fixed(width: 120, height: 120))
    }
}
