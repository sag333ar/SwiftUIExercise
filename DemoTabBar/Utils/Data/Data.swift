//
//  Data.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import Foundation

struct Data {
  static var fixedEntries = [
    Expense(id: 1, amount: 60, date: RandomDates().get1Jul, title: "Swiggy Order", account: "Personal", wallet: "Sodexo", category: "Food", tags: ["Home", "Outside Food"], location: "Swiggy"),
    Expense(id: 2, amount: 2000, date: RandomDates().get2Jul, title: "Maid charges", account: "Personal", wallet: "Cash", category: "Bills", tags: ["Bills", "Fixed Expenses"], location: "Mantri Celestia"),
    Expense(id: 3, amount: 250, date: RandomDates().get1Jul, title: "Subway @ Office", account: "Office", wallet: "Credit Card", category: "Food", tags: ["Friends", "Office"], location: "Kapil Towers"),
    Expense(id: 4, amount: 500, date: RandomDates().get2Jul, title: "Mobile Cover", account: "Personal", wallet: "PayTm", category: "Shopping", tags: ["Online Shopping"], location: "Amazon")
  ]

  static var groups = [
    ExpenseGroup(id: "2019/07/01", amount: 2060, expenses: [
      Expense(id: 1, amount: 60, date: RandomDates().get1Jul, title: "Swiggy Order", account: "Personal", wallet: "Sodexo", category: "Food", tags: ["Home", "Outside Food"], location: "Swiggy"),
      Expense(id: 2, amount: 2000, date: RandomDates().get1Jul, title: "Maid charges", account: "Personal", wallet: "Cash", category: "Bills", tags: ["Bills", "Fixed Expenses"], location: "Mantri Celestia")
    ]),
    ExpenseGroup(id: "2019/07/02", amount: 750, expenses: [
      Expense(id: 3, amount: 250, date: RandomDates().get1Jul, title: "Subway @ Office", account: "Office", wallet: "Credit Card", category: "Food", tags: ["Friends", "Office"], location: "Kapil Towers"),
      Expense(id: 4, amount: 500, date: RandomDates().get2Jul, title: "Mobile Cover", account: "Personal", wallet: "PayTm", category: "Shopping", tags: ["Online Shopping"], location: "Amazon")
    ])
  ]
}
