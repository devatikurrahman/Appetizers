//
//  Date+Extension.swift
//  Appetizers
//
//  Created by Atikur Rahman on 12/14/23.
//

import Foundation

extension Date {
    
    var eighteenYearAge: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredTenYearAge: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
