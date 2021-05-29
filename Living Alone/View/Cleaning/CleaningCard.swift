//
//  CleaningCard.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CleaningCard: View {
    var body: some View {
        ZStack {
            Color("CleaningColor")
            
            VStack (alignment: .leading, spacing: 5) {
                Text("Limpeza de Vidros")
                    .font(.system(size: 24, weight: .bold))
                
                Text ("Os passos para a limpeza dos vidros são bastante simples. A forma e a ordem em que são feitos é que...")
                    .font(.system(size: 14, weight: .regular))
                    .frame(height: 40)
            }
            .foregroundColor(.white)
            .padding()
        }
        .cornerRadius(22)
        .frame(height: 133)
    }
}

struct CleaningCard_Previews: PreviewProvider {
    static var previews: some View {
        CleaningCard()
            .previewLayout(.fixed(width: 350, height: 153))
    }
}
