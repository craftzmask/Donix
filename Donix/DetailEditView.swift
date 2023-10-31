//
//  DetailEditView.swift
//  Donix
//
//  Created by Khanh Chung on 10/30/23.
//

import SwiftUI

struct DetailEditView: View {
    @State private var item: Item = Item.emptyItem
    
    var body: some View {
        Form {
            Section(header: Text("Item Info")) {
                TextField("Name", text: $item.name)
                TextField("Quantity", value: $item.quantity, format: .number)
                    .keyboardType(.numberPad)
            }
        }
    }
}

struct DetailEditView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            DetailEditView()
        }
    }
}
