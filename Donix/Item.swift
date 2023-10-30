//
//  Item.swift
//  Donix
//
//  Created by Khanh Chung on 10/29/23.
//

import Foundation

struct Item: Identifiable, Hashable {
    let name: String
    let quantity: Int
    let id = UUID()
}

extension Item {
    static let sampleData: [Item] =
    [
        Item(name: "Sprinkle Vanila", quantity: 18),
        Item(name: "Sprinkle Chocolate", quantity: 12),
        Item(name: "Coconut Chocolate", quantity: 12),
        Item(name: "Apple Fritter", quantity: 8)
    ]
}
