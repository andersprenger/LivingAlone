//
//  HomeOrganizationCard3.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeOrganizationCard3: View {
    var body: some View {
        ZStack {
            Color("OrganizingColor")
            
            ZStack {
                HStack {
                    Image("FrontCutlery")
                        .resizable()
                        .frame(width: 158, height: 127, alignment: .center)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Image("Pens")
                        .resizable()
                        .frame(width: 112, height: 127, alignment: .center)
                }
            }
            
            VStack (alignment: .trailing) {
                HStack (alignment: .top) {
                    
                    Text("Dicas De\nOrganização")
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

struct HomeOrganizationCard3_Previews: PreviewProvider {
    static var previews: some View {
        HomeOrganizationCard3()
            .previewLayout(.fixed(width: 210, height: 140))
    }
}
