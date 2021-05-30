//
//  CookingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: CookingCategories = .breakfest
    @State var showDetails: Bool = false
    
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
            
            Picker("Cooking", selection: $selection) {
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
                ForEach (0 ..< 10) { _ in
                    CookingCard(recipe: ViewModel.shared.recipesList[0])
                        .padding(.horizontal)
                }
                .sheet(isPresented: $showDetails, content: {
                    CookingDetails(recipe: ViewModel.shared.recipesList[0])
                })
                .onTapGesture {
                    showDetails.toggle()
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
    
    func filterCookingTips(category: CookingCategories) -> [RecipeModel] {
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
