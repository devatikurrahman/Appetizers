//
//  ContentView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct AppetizerTabView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            TabView {
                AppetizerListView()
                    .tabItem { Label("Home", systemImage: "house") }
                AccountView()
                    .tabItem { Label("Account", systemImage: "person") }
                OrderView()
                    .tabItem { Label("Order", systemImage: "bag") }
                    .badge(order.items.count)
            }
            //.accentColor(Color("brandPrimary"))
        }
        .padding()
    }
}

#Preview {
    AppetizerTabView()
}
