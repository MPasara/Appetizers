//
//  String+Ext.swift
//  Appetizers
//
//  Created by Mladen Pašara on 06.07.2025..
//

import Foundation

extension String {

    var isValid: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
