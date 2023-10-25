//
//  ContentView.swift
//  Donix
//
//  Created by Khanh Chung on 10/24/23.
//

import SwiftUI

struct Item: Identifiable, Hashable {
    let name: String
    let quantity: Int
    let id = UUID()
}

struct ItemView: View {
    let item: Item

    var body: some View {
        HStack {
            Text(item.name)
            Spacer()
            Text(String(item.quantity))
        }
    }
}

private var items = [
    Item(name: "Sprinkle Vanila", quantity: 18),
    Item(name: "Sprinkle Chocolate", quantity: 12),
    Item(name: "Coconut Chocolate", quantity: 12),
    Item(name: "Apple Fritter", quantity: 8)
]

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack() {
            NavigationView {
                List(items) { item in
                    ItemView(item: item)
                }
                .navigationTitle("Donuts")
                .searchable(text: $searchText)
            }
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "square.and.pencil")
                        .font(.title2)
                        .imageScale(.large)
                })
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus.app")
                        .font(.title2)
                        .imageScale(.large)
                })
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
