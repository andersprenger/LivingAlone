//
//  Inicio.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 24/05/21.
//

import SwiftUI

struct Inicio: View {
    var allBigTopics : [BigTopicsModel]  = BigTopicsModel.bigTopicsArray
    
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                HStack{
                    ForEach(allBigTopics, id:\.id) {topic in
                        VStack{
                            RoundedRectangle(cornerRadius: 25, style: .continuous).frame(width: 101, height: 66, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text(topic.name)
                            
                        }
                    }
                }
            }.padding()
            
            ScrollView {
                VStack {
                    ForEach(allBigTopics, id:\.id) {topic in
                        VStack{
                            HStack{
                                Text(topic.name).padding(.leading)
                                Spacer()
                            }
                            ScrollView(.horizontal){
                                HStack{
                                    
                                    ForEach(0..<5){_ in
                                        RoundedRectangle(cornerRadius: 25, style: .continuous).frame(width: 203, height: 109, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).foregroundColor(.gray)
                                        
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            
        }
    }
}

struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        Inicio()
    }
}
