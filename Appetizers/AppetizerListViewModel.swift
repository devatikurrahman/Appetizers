//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/14/23.
//

import SwiftUI

final class AppetizerListViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem: AlertItem?
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers{ [self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        return
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        return
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        return
                    case .unableToComplete:
                        self.alertItem = AlertContext.invalidUnableToComplete
                        return
                    }
                }
            }
        }
    }
    
}
