//
//  ItemView.swift
//  Donix
//
//  Created by Khanh Chung on 10/29/23.
//

import SwiftUI

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
