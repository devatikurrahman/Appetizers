//
//  OrderView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct OrderView: View {
    
    //@State private var orderItems = MockData.appetizers
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: order.deleteItems)
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
                
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order",
                               message: "You have no items in your order. \nPlease add an appetizer!")
                }
            }
            .navigationTitle("Orders")
        }
    }
}

#Preview {
    OrderView()
}
