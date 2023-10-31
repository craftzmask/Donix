//
//  Item.swift
//  Donix
//
//  Created by Khanh Chung on 10/29/23.
//

import Foundation

struct Item: Identifiable, Hashable {
    var name: String
    var quantity: Int
    let id: UUID
    
    init(id: UUID = UUID(), name: String, quantity: Int) {
        self.id = id
        self.name = name
        self.quantity = quantity
    }
}

extension Item {
    static let sampleData: [Item] =
    [
        Item(name: "Sprinkle Vanila", quantity: 18),
        Item(name: "Sprinkle Chocolate", quantity: 12),
        Item(name: "Coconut Chocolate", quantity: 12),
        Item(name: "Apple Fritter", quantity: 8)
    ]
    
    static var emptyItem: Item {
        Item(name: "", quantity: 0)
    }
}
