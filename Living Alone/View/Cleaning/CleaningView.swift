//
//  CleaningView.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 28/05/21.
//

import SwiftUI

struct CleaningView: View {
    @Environment (\.presentationMode) private var presentationMode
    @ObservedObject var viewModel: CleaningViewModel
    
    @State private var pickerSelection: CleaningCategories = .clothes
    @State private var sheetSelection: CleaningTipModel?
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Text("\(Image(systemName: "chevron.backward")) Voltar")
                        .padding(.leading)
                        .foregroundColor(Color("CleaningColor"))
                        .onTapGesture {
                            self.presentationMode.wrappedValue.dismiss()
                        }
                    
                    Spacer()
                }
                
                Text("Limpeza")
                    .font(.system(size: 32, weight: .bold))
            }
            
            Picker("Cleaning", selection: $pickerSelection) {
                Text("Casa")
                    .tag(CleaningCategories.house)
                
                Text("Roupas")
                    .tag(CleaningCategories.clothes)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            .onAppear {
                UISegmentedControl.appearance().selectedSegmentTintColor = UIColor(Color("CleaningColor"))
            }
            
            ScrollView {
                ForEach (viewModel.filterCleaningTips(category: pickerSelection)) { tip in
                    CleaningCard(tip: tip)
                        .padding(.horizontal)
                        .onTapGesture {
                            sheetSelection = tip
                        }
                }
            }
            .sheet(item: $sheetSelection) { tip in
                CleaningDetails(tip: tip)
            }

            Spacer()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
}

struct CleaningView_Previews: PreviewProvider {
    static var previews: some View {
        CleaningView(viewModel: CleaningViewModel())
    }
}
