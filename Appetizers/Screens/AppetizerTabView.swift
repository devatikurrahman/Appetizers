//
//  ContentView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        VStack {
            TabView {
                AppetizerListView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                AccountView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Account")
                    }
                OrderView()
                    .tabItem {
                        Image(systemName: "bag")
                        Text("Order")
                    }
            }
            //.accentColor(Color("brandPrimary"))
        }
        .padding()
    }
}

#Preview {
    AppetizerTabView()
}
