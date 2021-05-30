//
//  CleaningView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

enum CleaningSections: String, Equatable, CaseIterable {
    case bedroom = "Bedroom"
    case bathroom = "Bathroom"
    case kitchen = "Kitchen"
}

struct CleaningView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: CleaningSections = .bedroom
    @State var showDetails: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Back")
                        .padding(.leading)
                        .foregroundColor(Color("CleaningColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Cleaning")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cleaning", selection: $selection) {
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
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("CleaningColor"))
            }
            
            ScrollView {
                ForEach (0 ..< 10) { _ in
                    CleaningCard()
                        .padding(.horizontal)
                }
                .sheet(isPresented: $showDetails, content: {
                    CleaningDetails()
                })
                .onTapGesture {
                    showDetails.toggle()
                }
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct CleaningView_Previews: PreviewProvider {
    static var previews: some View {
        CleaningView()
    }
}
