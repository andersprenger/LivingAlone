//
//  OrganizingView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct OrganizingView: View {
    @Environment (\.presentationMode) private var presentationMode
    
    @ObservedObject var viewModel: OrganizingViewModel
    
    @State private var pickerSelection: OrganizingCategories = .bedroom
    @State private var sheetSelection: OrganizingTipModel?

    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Voltar")
                        .padding(.leading)
                        .foregroundColor(Color("OrganizingColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Organização")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cooking", selection: $pickerSelection) {
                Text("Quarto")
                    .tag(OrganizingCategories.bedroom)
                
                Text("Guarda-Roupas")
                    .tag(OrganizingCategories.closet)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("OrganizingColor"))
            }
            
            ScrollView {
                ForEach (viewModel.filterOrganinzingTips(category: pickerSelection)) { tip in
                    OrganizingCard(tip: tip)
                        .padding(.horizontal)
                        .onTapGesture {
                            sheetSelection = tip
                        }
                }
            }
            .sheet(item: $sheetSelection) { tip in
                OrganizingDetails(tip: tip)
            }
            
            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct OrganizingView_Previews: PreviewProvider {
    static var previews: some View {
        OrganizingView(viewModel: OrganizingViewModel())
    }
}
