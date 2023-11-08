//
//  ItemsView.swift
//  Donix
//
//  Created by Khanh Chung on 10/24/23.
//

import SwiftUI

struct ItemsView: View {
    @State private var items = Item.sampleData
    @State private var searchText = ""
    @State private var isPresentingAddItemView = false
    
    var body: some View {
        VStack() {
            NavigationStack {
                List {
                    ForEach(items) { item in
                        NavigationLink {
                            DetailView(item: item)
                        } label: {
                            ItemView(item: item)
                        }
                        
                    }
                    .onDelete { indices in
                        items.remove(atOffsets: indices)
                    }
                }
                .navigationTitle("Donuts")
                .searchable(text: $searchText)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}, label: {
                            Image(systemName: "chevron.backward")
                                .imageScale(.large)
                            Text("Lists")
                        })
                        .font(.title2)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            isPresentingAddItemView = true
                        }, label: {
                            Image(systemName: "plus")
                                .font(.title2)
                                .imageScale(.large)
                        })
                        .sheet(isPresented: $isPresentingAddItemView) {
                            NavigationStack {
                                AddItemView()
                                    .navigationTitle("Donuts")
                                    .toolbar {
                                        ToolbarItem(placement: .cancellationAction) {
                                            Button("Cancel") {
                                                isPresentingAddItemView = false
                                            }
                                        }
                                    }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsView()
    }
}
