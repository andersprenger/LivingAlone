//
//  HomeHeaderButton.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeCleaningButton: View {
    var body: some View {
        VStack (spacing: 0){
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .frame(width: 100, height: 55)
                    .foregroundColor(Color("CleaningColor"))
                
                Image("HomeButtonCleaning")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 95, height: 95)
                    .offset(CGSize(width: -4, height: -21))
            }
            .frame(width: 100, height: 100)
            
            Text("Limpeza")
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color("DynamicColor"))
                .padding(.top, -6)
        }
    }
}

struct HomeHeaderButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeCleaningButton()
            .previewLayout(.fixed(width: 120, height: 120))
    }
}
