//
//  Order.swift
//  Appetizers
//
//  Created by Mladen Pašara on 19.07.2025..
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price }
    }
    
    func add(_ appetizer: Appetizer){
        items.append(appetizer)
    }
    
    func deleteItem(at offset: IndexSet) {
        items.remove(at: offset.first!)
    }
}
