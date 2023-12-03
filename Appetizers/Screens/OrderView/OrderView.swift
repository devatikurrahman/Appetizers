//
//  OrderView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.appetizers
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
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
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
