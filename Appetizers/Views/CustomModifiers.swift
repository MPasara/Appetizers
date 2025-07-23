//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Mladen Pašara on 19.07.2025..
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
   
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
