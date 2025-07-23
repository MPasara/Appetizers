//
//  ContentView.swift
//  Appetizers
//
//  Created by Mladen Pašara on 24.06.2025..
//

import SwiftUI

struct AppetizerTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                AppetizerListView()
            }
            Tab("Account", systemImage: "person") {
                AccountView()
            }
            Tab("Order", systemImage: "bag") {
                OrderView()
            }.badge(order.items.count)
        }
        .tint(.brandPrimary)
    }
}

#Preview {
    AppetizerTabView()
}
