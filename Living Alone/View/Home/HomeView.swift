//
//  HomeView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeView: View {
    @State private var isSearching = false
    
    var body: some View {
        ScrollView {
            VStack {
                SearchBar(text: .constant(""), isEditing: $isSearching)
                    .padding()
                
                HStack (alignment: .center) {
                    HomeCookingButton()
                    
                    HomeCleaningButton()
                    
                    HomeOrganizationButton()
                }

                VStack (alignment: .leading) {
                    Text("Cleaning")
                        .font(.system(size: 18, weight: .bold))
                        .padding(.leading)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            Spacer()
                            
                            HomeCookingCard1()
                            
                            HomeCookingCard2()
                            
                            HomeCookingCard3()
                            
                            HomeCookingCard4()
                            
                            HomeCookingCard5()
                        }
                    }
                }
                .padding(.vertical)
                
                VStack (alignment: .leading) {
                    Text("Cleaning")
                        .font(.system(size: 18, weight: .bold))
                        .padding(.leading)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            Spacer()
                            
                            HomeCleaningCard1()
                            
                            HomeCleaningCard2()
                            
                            HomeCleaningCard3()
                        }
                    }
                }
                .padding(.vertical)
                
                VStack (alignment: .leading) {
                    Text("Organization")
                        .font(.system(size: 18, weight: .bold))
                        .padding(.leading)
                    
                    ScrollView (.horizontal, showsIndicators: false) {
                        HStack {
                            Spacer()
                            
                            HomeOrganizationCard1()
                            
                            HomeOrganizationCard2()

                            HomeOrganizationCard3()
                        }
                    }
                }
                .padding(.vertical)
                
                Spacer()
            }
        }
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
