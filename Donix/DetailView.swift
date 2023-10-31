//
//  DetailView.swift
//  Donix
//
//  Created by Khanh Chung on 10/30/23.
//

import SwiftUI

struct DetailView: View {
    let item: Item
    
    var body: some View {
        List {
            Section(header: Text("Item Info")) {
                HStack {
                    Text("Name")
                    Spacer()
                    Text(item.name)
                }
                HStack {
                    Text("Quantity")
                    Spacer()
                    Text(String(item.quantity))
                }
            }
        }
        .navigationTitle(item.name)
        .toolbar {
            Button("Edit") {
                
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailView(item: Item.sampleData[0])
        }
    }
}
