//
//  teste.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 25/05/21.
//

import SwiftUI

struct teste: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 16).frame(maxHeight: 56/844)
            Image("prato")
            
            
        }
    }
}

struct teste_Previews: PreviewProvider {
    static var previews: some View {
        teste()
    }
}
