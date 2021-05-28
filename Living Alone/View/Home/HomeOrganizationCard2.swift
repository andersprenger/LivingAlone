//
//  HomeOrganizationCard2.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeOrganizationCard2: View {
    var body: some View {
        ZStack {
            Color("OrganizationColor")
            
            ZStack {
                HStack {
                    Image("FrontBag")
                        .resizable()
                        .frame(width: 110, height: 127, alignment: .center)
                    
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    
                    Image("Cutlery")
                        .resizable()
                        .frame(width: 158, height: 127, alignment: .center)
                }
            }
            
            VStack (alignment: .trailing) {
                HStack (alignment: .top) {
                    
                    Text("Ideias Para\nOrganizar\nGavetas")
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

struct HomeOrganizationCard2_Previews: PreviewProvider {
    static var previews: some View {
        HomeOrganizationCard2()
            .previewLayout(.fixed(width: 210, height: 140))
    }
}
