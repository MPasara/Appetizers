//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Mladen Pašara on 24.06.2025..
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
