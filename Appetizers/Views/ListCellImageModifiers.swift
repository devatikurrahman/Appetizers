//
//  ListCellImageModifiers.swift
//  Appetizers
//
//  Created by Atikur Rahman on 12/9/23.
//

import SwiftUI

//struct ListCellImageStyle: ViewModifier {
//    
//    func body(content: Content) -> some View {
//        self
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 120, height: 90)
//            .cornerRadius(8)
//    }
//}

extension Image {
    func listCellImageStyle() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 120, height: 90)
            .cornerRadius(8)
    }
}
