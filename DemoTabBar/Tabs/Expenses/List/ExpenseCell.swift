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
    NavigationLink(destination: ExpenseDetailsView()) {
      HStack {
        Text(expense.title)
        Spacer()
        Text(expense.amount.inCurrency)
      }
    }
  }
}

#if DEBUG
struct ExpenseCell_Previews: PreviewProvider {
  static var previews: some View {
    ExpenseCell(expense: Data.fixedEntries[0])
  }
}
#endif
