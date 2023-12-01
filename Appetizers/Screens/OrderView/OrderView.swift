//
//  OrderView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItem = MockData.appetizers
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(orderItem) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                    //.onDelete(perform: { indexSet in
                    //    orderItem.remove(atOffsets: indexSet)
                    //})
                }
                .listStyle(PlainListStyle())
                
                Button {
                    
                } label: {
                    OrderButton(title: "$99.99 - Place Order")
                }
                .padding(.bottom, 20)
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItem.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
