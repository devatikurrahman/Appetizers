//
//  Order.swift
//  Appetizers
//
//  Created by Atikur Rahman on 12/3/23.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    func add(_ appetizer: Appetizer) {
        items.append(appetizer)
    }
}