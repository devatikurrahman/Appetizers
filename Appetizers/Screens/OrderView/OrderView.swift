//
//  OrderView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(MockData.appetizers) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                }
                .listStyle(PlainListStyle())
                
                Button {
                    
                } label: {
                    App
                }
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
