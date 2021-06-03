//
//  HomeView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import SwiftUI

struct HomeView: View {
    @State private var isSearching: Bool = false
    @State private var searchText: String = ""
    
    @ObservedObject private var cookingViewModel: CookingViewModel = CookingViewModel()
    @ObservedObject private var cleaningViewModel: CleaningViewModel = CleaningViewModel()
    @ObservedObject private var organizingViewModel: OrganizingViewModel = OrganizingViewModel()
    
    @State private var selectedCookingSheet: RecipeModel?
    @State private var selectedCleaningSheet: CleaningTipModel?
    @State private var selectedOrganizingSheet: OrganizingTipModel?
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    SearchBar(text: $searchText, isEditing: $isSearching)
                        .padding()
                    
                    if isSearching {
                        ScrollView {
                            VStack {
                                VStack {
                                    HStack {
                                        Text("Cozinha")
                                            .font(.system(size: 18, weight: .bold))
                                            .padding(.leading)

                                        Spacer()
                                    }
                                    
                                    ForEach (cookingViewModel.search(text: searchText)) { recipe in
                                        CookingCard(recipe: recipe)
                                            .padding(.horizontal)
                                            .onTapGesture {
                                                selectedCookingSheet = recipe
                                            }
                                    }
                                }
                                .sheet(item: $selectedCookingSheet) { recipe in
                                    CookingDetails(recipe: recipe)
                                }
                                
                                VStack {
                                    HStack {
                                        Text("Limpeza")
                                            .font(.system(size: 18, weight: .bold))
                                            .padding(.leading)

                                        Spacer()
                                    }
                                    
                                    ForEach (cleaningViewModel.search(text: searchText)) { tip in
                                        CleaningCard(tip: tip)
                                            .padding(.horizontal)
                                            .onTapGesture {
                                                selectedCleaningSheet = tip
                                            }
                                    }
                                }
                                .sheet(item: $selectedCleaningSheet) { tip in
                                    CleaningDetails(tip: tip)
                                }
                                
                                VStack {
                                    HStack {
                                        Text("Organização")
                                            .font(.system(size: 18, weight: .bold))
                                            .padding(.leading)

                                        Spacer()
                                    }
                                    
                                    ForEach (organizingViewModel.search(text: searchText)) { tip in
                                        OrganizingCard(tip: tip)
                                            .padding(.horizontal)
                                            .onTapGesture {
                                                selectedOrganizingSheet = tip
                                            }
                                    }
                                }
                                .sheet(item: $selectedOrganizingSheet) { tip in
                                    OrganizingDetails(tip: tip)
                                }
                            }
                        }
                    } else {
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
                                        .onTapGesture {
                                            selectedCookingSheet = cookingViewModel.recipesList[5]
                                        }
                                    
                                    HomeCookingCard2()
                                        .onTapGesture {
                                            selectedCookingSheet = cookingViewModel.recipesList[8]
                                        }
                                    
                                    HomeCookingCard3()
                                        .onTapGesture {
                                            selectedCookingSheet = cookingViewModel.recipesList[7]
                                        }
                                    
                                    HomeCookingCard4()
                                        .onTapGesture {
                                            selectedCookingSheet = cookingViewModel.recipesList[0]
                                        }
                                    
                                    HomeCookingCard5()
                                        .onTapGesture {
                                            selectedCookingSheet = cookingViewModel.recipesList[12]
                                        }
                                }
                            }
                        }
                        .padding(.vertical)
                        .sheet(item: $selectedCookingSheet) { recipe in
                            CookingDetails(recipe: recipe)
                        }
                        
                        VStack (alignment: .leading) {
                            Text("Limpeza")
                                .font(.system(size: 18, weight: .bold))
                                .padding(.leading)
                            
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    Spacer()
                                    
                                    HomeCleaningCard1()
                                        .onTapGesture {
                                            selectedCleaningSheet = cleaningViewModel.cleaningTipsList[2]
                                        }
                                    HomeCleaningCard2()
                                        .onTapGesture {
                                            selectedCleaningSheet = cleaningViewModel.cleaningTipsList[1] // FIXME: -- change this
                                        }
                                    HomeCleaningCard3()
                                        .onTapGesture {
                                            selectedCleaningSheet = cleaningViewModel.cleaningTipsList[3]
                                        }
                                }
                            }
                        }
                        .padding(.vertical)
                        .sheet(item: $selectedCleaningSheet) { tip in
                            CleaningDetails(tip: tip)
                        }
                        
                        VStack (alignment: .leading) {
                            Text("Organização")
                                .font(.system(size: 18, weight: .bold))
                                .padding(.leading)
                            
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack {
                                    Spacer()
                                    
                                    HomeOrganizationCard1()
                                        .onTapGesture {
                                            selectedOrganizingSheet = organizingViewModel.organizingTipsList[2] // FIXME: -- change this
                                        }
                                    HomeOrganizationCard2()
                                        .onTapGesture {
                                            selectedOrganizingSheet = organizingViewModel.organizingTipsList[1] // FIXME: -- change this
                                        }
                                    HomeOrganizationCard3()
                                        .onTapGesture {
                                            selectedOrganizingSheet = organizingViewModel.organizingTipsList[0]
                                        }
                                }
                            }
                        }
                        .padding(.vertical)
                        .sheet(item: $selectedOrganizingSheet) { tip in
                            OrganizingDetails(tip: tip)
                        }
                        
                        Spacer()
                    }
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
