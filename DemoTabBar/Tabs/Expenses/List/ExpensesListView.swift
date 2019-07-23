//
//  ExpensesListView.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

// View Model

extension ExpenseGroup: Identifiable {
  var headerView: some View {
    ExpenseGroupHeaderView(self)
  }

  var view: some View {
    Section(header: headerView) {
      ForEach(self.expenses) { expense in
        expense.view
      }
    }
  }

  static func groups(from expenses: [Expense]) -> [ExpenseGroup] {
    let df = DateFormatter()
    df.dateFormat = "yyyy/MM/dd"
    let dates = expenses.compactMap { (expense) -> String? in
      guard let date = expense.date else { return nil }
      return df.string(from: date)
    }.unique
    var groups = [ExpenseGroup]()
    dates.forEach { date in
      let filteredExpenses = expenses.filter { (expense) -> Bool in
        guard let expenseDate = expense.date else { return false }
        return df.string(from: expenseDate) == date
      }
      let amount = filteredExpenses.reduce(0.0) { $0 + $1.amount }
      groups.append(ExpenseGroup(id: date, amount: amount, expenses: filteredExpenses))
    }
    return groups
  }
}

// View
struct ExpensesListView: View {
  var groups: [ExpenseGroup] = []

  init(_ groups: [ExpenseGroup]) {
    self.groups = groups
  }

  var titleText: String {
    self.groups.reduce(0.0) { $0 + $1.expenses.reduce(0.0) { $0 + $1.amount } }.inCurrency
  }


  var body: some View {
    NavigationView {
      List {
        ForEach(self.groups) { section in
          section.view
        }
      }
      .listStyle(.grouped)
      .navigationBarTitle(self.titleText)
      .navigationBarItems(trailing: NavigationLink("Add", destination: EditExpenseDetailsView()))
    }
  }
}

#if DEBUG
struct ExpensesListView_Previews: PreviewProvider {
  static var previews: some View {
    ExpensesListView(Data.groups)
  }
}
#endif
