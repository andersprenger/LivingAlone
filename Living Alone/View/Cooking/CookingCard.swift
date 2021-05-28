//
//  CookingCard.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CookingCard: View {
    var body: some View {
        ZStack {
            Color("CookingColor")
            
            VStack (alignment: .leading, spacing: 5) {
                HStack {
                    Text("Panqueca Americana")
                        .font(.system(size: 24, weight: .bold))
                    
                    if true { // colocar um teste pra ver se eh vejetariano or whatever...
                        Image(systemName: "leaf.fill")
                    }
                }
                
                Text ("Misture em um recipiente: a farinha, o açúcar, o fermento e o sal. Em outro recipiente, misture os ovos, o leite e a manteiga.")
                    .font(.system(size: 14, weight: .regular))
                    
                    .frame(height: 23)
                
                Text("\(Image(systemName: "stopwatch.fill")) \(40) min")
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
        CookingCard()
            .padding()
            .previewLayout(.fixed(width: 370, height: 153))
    }
}