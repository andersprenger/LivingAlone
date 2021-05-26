//
//  ItemView.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 26/05/21.
//

import SwiftUI

struct ItemView: View {
    var item : Item
    var body: some View {
        VStack{
            Text(item.name)
            Image(item.name).frame(width: UIScreen.main.bounds.width).scaledToFit()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item.cafeDaManha[0])
    }
}
