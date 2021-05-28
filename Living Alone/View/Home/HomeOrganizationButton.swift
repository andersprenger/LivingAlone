//
//  HomeOrganizationButton.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeOrganizationButton: View {
    var body: some View {
        Button(action: {}) {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: 100, height: 55)
                        .foregroundColor(Color("OrganizationColor"))

                    Image("HomeButtonOrganization")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 95, height: 95)
                        .offset(CGSize(width: -4, height: -20))
                }
                .frame(width: 100, height: 100)
                
                Text("Organization")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(Color("DynamicColor"))
                    .padding(.top, -14)            }
        }
    }
}

struct HomeOrganizationButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeOrganizationButton()
            .previewLayout(.fixed(width: 120, height: 120))
    }
}
