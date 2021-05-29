//
//  CookingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

enum CookingSections: String, Equatable, CaseIterable {
    case breakfest = "Breakfest"
    case lunch = "Lunch"
    case desert = "Desert"
}

struct CookingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: CookingSections = .breakfest
    @State var showDetails: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Back")
                        .padding(.leading)
                        .foregroundColor(Color("CookingColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Cooking")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cooking", selection: $selection) {
                Text("Breakfest")
                    .tag(CookingSections.breakfest)
                
                Text("Lunch")
                    .tag(CookingSections.lunch)
                
                Text("Desert")
                    .tag(CookingSections.desert)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("CookingColor"))
            }
            
            ScrollView {
                ForEach (0 ..< 10) { _ in
                    CookingCard()
                        .padding(.horizontal)
                }
                .sheet(isPresented: $showDetails, content: {
                    CookingDetails()
                })
                .onTapGesture {
                    showDetails.toggle()
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
    }
}

struct CookingView_Previews: PreviewProvider {
    static var previews: some View {
        CookingView()
    }
}
