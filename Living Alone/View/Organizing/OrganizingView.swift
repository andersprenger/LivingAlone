//
//  OrganizingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct OrganizingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: CleaningSections = .bedroom
    
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
                    .tag(CleaningSections.bedroom)
                
                Text("Bathroom")
                    .tag(CleaningSections.bathroom)
                
                Text("Kitchen")
                    .tag(CleaningSections.kitchen)
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
