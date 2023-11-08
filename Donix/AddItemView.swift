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
                    GeometryReader { metrics in
                        let w = metrics.size.width
                        HStack(spacing: 0) {
                            Text(item.name)
                                .frame(width: w * 0.50, alignment: .leading)
                            Spacer()
                            TextField(String(item.quantity), value: $newItemQuantity, format: .number)
                                .frame(width: w * 0.10)
                                .multilineTextAlignment(.trailing)
                                .textFieldStyle(.roundedBorder)
                                .keyboardType(.numberPad)
                            
                            Button(action: {
                                print("tap remove")
                            }) {
                                Image(systemName: "minus.circle.fill")
                                    .foregroundColor(.red)
                            }
                            .frame(width: w * 0.30, alignment: .trailing)
                        }
                    }
                    .onTapGesture(count: 2) {
                        print("Double taps to remove")
                    }
                }
            }
            
            Section(header: Text("Select Items")) {
                List(Item.sampleData) { item in
                    GeometryReader { metrics in
                        let w = metrics.size.width
                        HStack(spacing: 0) {
                            Text(item.name)
                                .frame(width: w * 0.50, alignment: .leading)
                            Spacer()
                            TextField(String(item.quantity), value: $newItemQuantity, format: .number)
                                .frame(width: w * 0.10)
                                .multilineTextAlignment(.trailing)
                                .textFieldStyle(.roundedBorder)
                                .keyboardType(.numberPad)
                            
                            Button(action: {
                                print("tap add")
                            }) {
                                Image(systemName: "plus.circle.fill")
                            }
                            .frame(width: w * 0.30, alignment: .trailing)
                        }
                    }
                    .onTapGesture(count: 2) {
                        print("Double taps to add")
                    }
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .confirmationAction) {
                Button {
                    print("Add a new Item")
                } label: {
                    Image(systemName: "plus")
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
