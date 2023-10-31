//
//  DetailView.swift
//  Donix
//
//  Created by Khanh Chung on 10/30/23.
//

import SwiftUI

struct DetailView: View {
    var item: Item
    @State var isPresentingEditView = false
    
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
                isPresentingEditView = true
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationStack {
                DetailEditView()
                    .navigationTitle(item.name)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingEditView = false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Save") {
                                isPresentingEditView = false
                            }
                        }
                    }
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
