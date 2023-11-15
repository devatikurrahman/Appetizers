//
//  LoadingView.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/15/23.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Image()
        ProgressView()
            .scaleEffect(1.5)
            
    }
}

#Preview {
    LoadingView()
}
