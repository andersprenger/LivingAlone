//
//  CookingDetails.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingDetails: View {
    @Environment (\.presentationMode) private var presentationMode
    
    var recipe: RecipeTipModel = ViewModel.shared.tipsList[1] as! RecipeTipModel

    var body: some View {
        ScrollView {
            VStack (alignment: .leading, spacing: 0){
                ZStack {
                    Text(recipe.title)
                        .font(.system(size: 17, weight: .bold))
                    
                    HStack {
                        Spacer()
                        
                        Text("OK")
                            .font(.system(size: 17))
                            .padding(.trailing)
                            .foregroundColor(Color("CookingColor"))
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                            }
                    }
                }
                .padding()
                
                Image(recipe.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(height: 252)
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color("CookingColor"))
                        
                        Text("\(Image(systemName: "stopwatch.fill")) \(recipe.time) min")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 92, height: 39)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(Color("CookingColor"))
                        
                        Text(recipe.servings == 1 ? "1 Porção" : "\(recipe.servings) Porções")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.white)
                    }
                    .frame(width: 92, height: 39)
                    
                    if recipe.vegetarian {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .foregroundColor(Color("CookingColor"))
                            
                            Text("\(Image(systemName: "leaf.fill")) Veg")
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .frame(width: 92, height: 39)
                    }
                }
                .padding([.top, .horizontal])
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Ingredientes")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("CookingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    
                    VStack (alignment: .leading, spacing: 5) {
                        ForEach (recipe.ingredients, id: \.self) { ingredient in
                            Text(ingredient)
                        }
                    }
                    .padding(.bottom, 5)

                    HStack {
                        Text("Modo de Preparo")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(Color("CookingColor"))
                        
                        Spacer()
                    }
                    .padding(.bottom, 5)
                    
                    Text(recipe.structions)
                    
                }
                .padding()
                
                Spacer()
            }
        }
    }
}

struct CookingDetails_Previews: PreviewProvider {
    static var previews: some View {
        CookingDetails()
    }
}
