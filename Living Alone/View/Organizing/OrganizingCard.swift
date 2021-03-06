//
//  OrganizingCard.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct OrganizingCard: View {
    var tip: OrganizingTipModel
    
    var body: some View {
        ZStack {
            Color("OrganizingColor")
            
            VStack (alignment: .leading, spacing: 5) {
                Text(tip.title)
                    .font(.system(size: 24, weight: .bold))
                
                Text (tip.description ?? tip.instructions[0])
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

struct OrganizingCard_Previews: PreviewProvider {
    static var previews: some View {
        OrganizingCard(tip: OrganizingViewModel().organizingTipsList[0])
            .previewLayout(.fixed(width: 350, height: 153))
    }
}
