//
//  LoadingView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/15/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
        ProgressView()
            .scaleEffect(1.5)
            
    }
}

#Preview {
    LoadingView()
}
