//
//  LivingAloneApp.swift
//  LivingAlone
//
//  Created by Anderson Sprenger on 24/05/21.
//

import SwiftUI

@main
struct LivingAloneApp: App {
    
    init() {
           UISegmentedControl.appearance().selectedSegmentTintColor = .systemOrange
           UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
           UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
           UISegmentedControl.appearance().backgroundColor = .white
       }
    
    
    var body: some Scene {
        WindowGroup {
            Inicio()
        }
    }
}
