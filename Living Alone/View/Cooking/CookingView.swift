//
//  CookingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State private var pickerSelection: CookingCategories = .breakfest
    @State private var showDetails: Bool = false
    @State private var sheetSelection: RecipeModel = ViewModel.shared.recipesList[0]
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Back")
                        .padding(.leading)
                        .foregroundColor(Color("CookingColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Cooking")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cooking", selection: $pickerSelection) {
                Text("Breakfest")
                    .tag(CookingCategories.breakfest)
                
                Text("Lunch")
                    .tag(CookingCategories.lunch)
                
                Text("Desert")
                    .tag(CookingCategories.desert)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("CookingColor"))
            }
            
            ScrollView {
                ForEach (filterRecipes(category: pickerSelection)) { recipe in
                    CookingCard(recipe: recipe)
                        .padding(.horizontal)
                        .onTapGesture {
                            showDetails.toggle()
                            sheetSelection = recipe
                        }
                }
            }
            .sheet(isPresented: $showDetails, content: {
                CookingDetails(recipe: sheetSelection)
            })
            
            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
    
    func filterRecipes(category: CookingCategories) -> [RecipeModel] {
        ViewModel.shared.recipesList.filter { recipe in
            recipe.category == category
        }
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView()
    }
}
