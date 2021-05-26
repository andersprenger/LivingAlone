//
//  ItemOfCategoryView.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 25/05/21.
//

import SwiftUI

struct ItemOfCategoryView: View {
    var item : Item
    var cor : Color
    var body: some View {
        
        
        
        
        VStack(alignment: .leading){
            
            Text(item.name)
            .foregroundColor(.white)
            .font(Font.system(size:25))
                .bold().padding(.horizontal)
            
            
            Text(item.description)
            .frame(maxWidth:UIScreen.main.bounds.width*0.89, maxHeight: UIScreen.main.bounds.height*0.0272)
            .font(Font.system(size:13))
            .foregroundColor(.white)
            .padding(.horizontal)
        }
        .frame(width: UIScreen.main.bounds.width*0.897, height:UIScreen.main.bounds.height*0.1575,alignment: .center)
        .background(RoundedRectangle(cornerRadius: 13)
        .foregroundColor(cor))
        .padding(.horizontal,UIScreen.main.bounds.width*0.1)
        
        
    }
    
}



struct ItemOfCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        ItemOfCategoryView(item: Item.cafeDaManha[0], cor: Color(BigTopicsModel.bigTopicsArray[0].color))
    }
}
