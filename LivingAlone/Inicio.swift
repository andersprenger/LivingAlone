//
//  Inicio.swift
//  LivingAlone
//
//  Created by Heitor Feijó Kunrath on 24/05/21.
//

import SwiftUI

struct Inicio: View {
    var allBigTopics : [BigTopicsModel]  = BigTopicsModel.bigTopicsArray
    init() {
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
            UISegmentedControl.appearance().backgroundColor = .white
    }
    var body: some View {
        NavigationView{
        VStack{
            
               
                    HStack{
                        ForEach(allBigTopics, id:\.id) {topic in
                            NavigationLink(
                                destination: CategoriePicker(currentBigTopic: topic, currentSubCategory: topic.subCategories[0])   ){
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
                Spacer()
            }
            
        }
    }
}

struct Inicio_Previews: PreviewProvider {
    static var previews: some View {
        Inicio()
    }
}
