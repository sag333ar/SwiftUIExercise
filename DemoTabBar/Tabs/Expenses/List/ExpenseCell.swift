//
//  ExpenseCell.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

// View Model
extension Expense: Identifiable {
  var view: some View {
    return ExpenseCell(expense: self)
  }
}

// View
struct ExpenseCell: View {
  let expense: Expense
  var body: some View {
    HStack {
      Text(expense.title)
      Spacer()
      Text(expense.amount.inCurrency)
    }
  }
}

#if DEBUG
struct ExpenseCell_Previews: PreviewProvider {
  static var previews: some View {
    ExpenseCell(expense: Expense(id: 1, amount: 60, title: "Swiggy Order", account: "Personal", wallet: "Sodexo", category: "Food", tags: ["Home", "Outside Food"], location: "Swiggy"))
  }
}
#endif
