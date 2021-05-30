//
//  OrganizingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct OrganizingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @State var selection: OrganizingCategories = .bedroom
    @State var showDetails: Bool = false

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
                    .tag(OrganizingCategories.bedroom)
                
                Text("Closet")
                    .tag(OrganizingCategories.closet)
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
                .sheet(isPresented: $showDetails, content: {
                    OrganizingDetails()
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

struct OrganizingView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizingView()
    }
}
