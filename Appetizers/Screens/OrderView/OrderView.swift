//
//  OrderView.swift
//  Appetizers
//
//  Created by Mladen Pašara on 24.06.2025..
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order

    //@State private var orderItems = MockData.orderItems
    @State private var isShowingClearAlert = false

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(.inset)

                    Button {
                        print("Order placed...")
                    } label: {
                        Text("$\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 20)
                }
                if order.items.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message:
                            "You have no items in your order. Please add an appetizer!"
                    )
                }
            }
            .navigationTitle("🧾 Orders")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingClearAlert = true
                    } label: {
                        Image(systemName: "trash")
                            .foregroundColor(order.items.isEmpty ? .gray : .red)

                    }
                    .disabled(order.items.isEmpty)
                    .alert("Clear Order", isPresented: $isShowingClearAlert) {
                        Button("Cancel", role: .cancel) {}
                        Button("Clear All", role: .destructive) {
                            clearOrder()
                        }
                    } message: {
                        Text(
                            "Are you sure you want to remove all items from your order?"
                        )
                    }
                }
            }
        }
    }
    

    func clearOrder() {
        order.items.removeAll()
    }
}

#Preview {
    OrderView()
}
