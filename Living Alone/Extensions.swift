//
//  Extensions.swift
//  Living Alone
//
//  Created by Anderson Sprenger on 27/05/21.
//

import Foundation

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
