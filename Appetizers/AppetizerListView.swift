//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/3/23.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationStack {
            List(MockData.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("Appetizers")
        }
    }
}

#Preview {
    AppetizerListView()
}
