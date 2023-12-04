//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Atikur Rahman on 12/4/23.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

