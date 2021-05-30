//
//  CookingCard.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingCard: View {
    let recipe: RecipeTipModel
    
    var body: some View {
        ZStack {
            Color("CookingColor")
            
            VStack (alignment: .leading, spacing: 5) {
                HStack {
                    Text(recipe.title)
                        .font(.system(size: 24, weight: .bold))
                    
                    if recipe.vegetarian {
                        Image(systemName: "leaf.fill")
                    }
                }
                
                Text (recipe.structions)
                    .font(.system(size: 14, weight: .regular))
                    
                    .frame(height: 23)
                
                Text("\(Image(systemName: "stopwatch.fill")) \(recipe.time) min")
                    .font(.system(size: 14, weight: .bold))
            }
            .foregroundColor(.white)
            .padding()
        }
        .cornerRadius(22)
        .frame(height: 133)
    }
}

struct CookingCard_Previews: PreviewProvider {
    static var previews: some View {
        CookingCard(recipe: ViewModel.shared.tipsList[0] as! RecipeTipModel)
            .previewLayout(.fixed(width: 370, height: 153))
    }
}
