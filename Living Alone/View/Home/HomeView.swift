//
//  HomeView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            SearchBar(text: .constant(""), isEditing: .constant(false))
                .padding()
            
            HStack (alignment: .center) {
                HomeCookingButton()
                
                HomeCleaningButton()
                
                HomeOrganizationButton()
            }
            
            VStack (alignment: .leading) {
                Text("Cleaning")
                    .font(.system(size: 18, weight: .bold))
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        HomeCleaningCard1()
                        
                        HomeCleaningCard2()
                        
                        HomeCleaningCard3()
                    }
                }
            }
            .padding()
            
            VStack (alignment: .leading) {
                Text("Organization")
                    .font(.system(size: 18, weight: .bold))
                
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        HomeOrganizationCard1()
                        
                        HomeOrganizationCard2()

                        HomeOrganizationCard3()
                    }
                }
            }
            .padding()
            
            Spacer()
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
