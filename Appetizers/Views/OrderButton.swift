//
//  OrderButton.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/20/23.
//

import SwiftUI

struct OrderButton: View {
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary1)
    }
}

#Preview {
    OrderButton(title: "Test Title")
}
