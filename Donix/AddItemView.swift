//
//  AddItemView.swift
//  Donix
//
//  Created by Khanh Chung on 10/30/23.
//

import SwiftUI

struct AddItemView: View {
    @State var newItemName = ""
    @State var newItemQuantity = 0
    
    var body: some View {
        Form {
            Section(header: Text("Added Items")) {
                List(Item.sampleData) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        Text(String(item.quantity))
                    }
                }
            }
            
            Section(header: Text("Select Items")) {
                List(Item.sampleData) { item in
                    HStack {
                        Text(item.name)
                        Spacer()
                        TextField(String(item.quantity), value: $newItemQuantity, format: .number)
                            .frame(width: 20)
                            .keyboardType(.numberPad)
                    }
                }
                .onTapGesture(count: 2) {
                    print("Double taps")
                }
            }
        }
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
