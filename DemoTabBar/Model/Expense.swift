//
//  Expense.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

struct Expense: Identifiable {
    var id: Int
    let amount: Double
    let date: Date
    let title: String
    let account: String?
    let wallet: String?
    let category: String?
    let tags: [String]?
    let location: String?
}

extension Expense {
    static var fixedEntries: [Expense] {
        return [
            Expense(id: 1, amount: 60, date: Date(), title: "Swiggy Order", account: "Personal", wallet: "Sodexo", category: "Food", tags: ["Home", "Outside Food"], location: "Swiggy"),
            Expense(id: 2, amount: 2000, date: Date(), title: "Maid charges", account: "Personal", wallet: "Cash", category: "Bills", tags: ["Bills", "Fixed Expenses"], location: "Mantri Celestia"),
            Expense(id: 3, amount: 250, date: Date(), title: "Subway @ Office", account: "Office", wallet: "Credit Card", category: "Food", tags: ["Friends", "Office"], location: "Kapil Towers"),
            Expense(id: 4, amount: 500, date: Date(), title: "Mobile Cover", account: "Personal", wallet: "PayTm", category: "Shopping", tags: ["Online Shopping"], location: "Amazon")
        ]
    }
}
