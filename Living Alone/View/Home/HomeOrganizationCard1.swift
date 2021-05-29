//
//  HomeOrganizationCard1.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeOrganizationCard1: View {
    var body: some View {
        ZStack {
            Color("OrganizingColor")
            
            HStack {
                Spacer()
                
                Image("Bag")
                    .resizable()
                    .frame(width: 110, height: 127)
            }
            
            VStack (alignment: .trailing) {
                HStack (alignment: .top) {
                    
                    Text("Métodos Para\nDobrar\nRoupas")
                        .font(.system(size: 17, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .frame(width: 114, height: 61, alignment: .center)
                        .padding([.top, .leading])
                    
                    Spacer()
                }
                
                Spacer()
            }
        }
        .frame(width: 203, height: 128)
        .clipShape(RoundedRectangle(cornerRadius: 17.0))
    }
}

struct HomeOrganizationCard1_Previews: PreviewProvider {
    static var previews: some View {
        HomeOrganizationCard1()
            .previewLayout(.fixed(width: 210, height: 140))
    }
}
