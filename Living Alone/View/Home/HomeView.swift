//
//  HomeView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeView: View {
    @State private var isSearching = false
    
    @ObservedObject private var cookingViewModel: CookingViewModel = CookingViewModel()
    @ObservedObject private var cleaningViewModel: CleaningViewModel = CleaningViewModel()
    @ObservedObject private var organizingViewModel: OrganizingViewModel = OrganizingViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SearchBar(text: .constant(""), isEditing: $isSearching)
                        .padding()
                    
                    HStack (alignment: .center) {
                        NavigationLink (destination: CookingView(viewModel: cookingViewModel)){
                            HomeCookingButton()
                        }
                        
                        NavigationLink (destination: CleaningView(viewModel: cleaningViewModel)){
                            HomeCleaningButton()
                        }
                        
                        
                        NavigationLink (destination: OrganizingView(viewModel: organizingViewModel)){
                            HomeOrganizationButton()
                        }
                    }
                    
                    VStack (alignment: .leading) {
                        Text("Cozinha")
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
                        Text("Limpeza")
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
                        Text("Organização")
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
            .navigationBarHidden(true)
        }
        .onAppear {
            UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        } // muda a cor do texto dos pickers selecionados para branco em todos os SegmentedControl do app
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
