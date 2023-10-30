//
//  ContentView.swift
//  Donix
//
//  Created by Khanh Chung on 10/24/23.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack() {
            NavigationView {
                List(Item.sampleData) { item in
                    NavigationLink {
                        Text(item.name)
                    } label: {
                        ItemView(item: item)
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
                        Button(action: {}, label: {
                            Image(systemName: "plus")
                                .font(.title2)
                                .imageScale(.large)
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
