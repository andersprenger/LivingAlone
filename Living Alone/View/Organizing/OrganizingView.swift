//
//  OrganizingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

enum OrganizingSections: String, Equatable, CaseIterable {
    case bedroom = "Bedroom"
    case closet = "Closet"
}

struct OrganizingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: OrganizingSections = .bedroom
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Back")
                        .padding(.leading)
                        .foregroundColor(Color("OrganizingColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Organizing")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cooking", selection: $selection) {
                Text("Bedroom")
                    .tag(OrganizingSections.bedroom)
                
                Text("Closet")
                    .tag(OrganizingSections.closet)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("OrganizingColor"))
            }
            
            ScrollView {
                ForEach (0 ..< 10) { _ in
                    OrganizingCard()
                        .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct OrganizingView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizingView()
    }
}
