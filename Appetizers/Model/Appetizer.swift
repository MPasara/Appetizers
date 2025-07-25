//
//  Appetizer.swift
//  Appetizers
//
//  Created by Mladen Pašara on 25.06.2025..
//

import Foundation

struct Appetizer: Decodable, Identifiable, Equatable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is the description for my appetizer. It's yummy!",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 10,
        carbs: 100
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItemOne = Appetizer(
        id: 0001,
        name: "Test Appetizer 1",
        description: "This is the description for my appetizer. It's yummy!",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 10,
        carbs: 100
    )
    
    static let orderItemTwo = Appetizer(
        id: 0002,
        name: "Test Appetizer 2",
        description: "This is the description for my appetizer. It's yummy!",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 10,
        carbs: 100
    )
    
    static let orderItemThree = Appetizer(
        id: 0003,
        name: "Test Appetizer 3",
        description: "This is the description for my appetizer. It's yummy!",
        price: 9.99,
        imageURL: "asian-flank-steak",
        calories: 100,
        protein: 10,
        carbs: 100
    )
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
