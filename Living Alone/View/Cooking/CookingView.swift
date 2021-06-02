//
//  CookingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @ObservedObject  var viewModel: CookingViewModel
    
    @State private var pickerSelection: CookingCategories = .breakfest
    @State private var sheetSelection: RecipeModel?
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Voltar")
                        .padding(.leading)
                        .foregroundColor(Color("CookingColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Cozinha")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cooking", selection: $pickerSelection) {
                Text("Café da Manha")
                    .tag(CookingCategories.breakfest)
                
                Text("Almoço")
                    .tag(CookingCategories.lunch)
                
                Text("Doces")
                    .tag(CookingCategories.desert)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("CookingColor"))
            }
            
            ScrollView {
                ForEach (viewModel.filterRecipes(category: pickerSelection)) { recipe in
                    CookingCard(recipe: recipe)
                        .padding(.horizontal)
                        .onTapGesture {
                            sheetSelection = recipe
                        }
                }
            }
            .sheet(item: $sheetSelection) { recipe in
                CookingDetails(recipe: recipe)
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView(viewModel: CookingViewModel())
    }
}
