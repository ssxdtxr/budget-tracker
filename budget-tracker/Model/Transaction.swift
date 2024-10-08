//
//  Transaction.swift
//  budget-tracker
//
//  Created by Егор Терёшкин on 09.08.2024.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
}

var sampleTransactions: [Transaction] = [
    .init(title: "Products", remarks: "dadada", amount: 312312, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
    .init(title: "Computer", remarks: "dadada", amount: 312312, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Books", remarks: "dadada", amount: 312312, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
    .init(title: "Credit", remarks: "dadada", amount: 312312, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
]

