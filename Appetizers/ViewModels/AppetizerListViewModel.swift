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
    @Published var isLoading = false
    
    func getAppetizers() {
        isLoading = true
        NetworkManager.shared.getAppetizers{ [self] result in
            DispatchQueue.main.async {
                self.isLoading = false
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
