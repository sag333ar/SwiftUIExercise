//
//  ExpenseDetailsView.swift
//  DemoTabBar
//
//  Created by Sagar Kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

struct ExpenseDetailCellItem {
  let id: String
  let subtitle: String
  static func items(from expense: Expense) -> [ExpenseDetailCellItem]{
    var items = [ExpenseDetailCellItem]()
    items.append(ExpenseDetailCellItem(id: "Amount", subtitle: expense.amount.inCurrency))
    if let date = expense.date {
      let df = DateFormatter()
      df.dateFormat = "yyyy/MM/dd"
      items.append(ExpenseDetailCellItem(id: "Date", subtitle: df.string(from: date)))
    }
    if let account = expense.account {
      items.append(ExpenseDetailCellItem(id: "Account", subtitle: account))
    }
    if let account = expense.wallet {
      items.append(ExpenseDetailCellItem(id: "Wallet", subtitle: account))
    }
    if let account = expense.location {
      items.append(ExpenseDetailCellItem(id: "Location", subtitle: account))
    }
    if let account = expense.tags {
      items.append(ExpenseDetailCellItem(id: "Tags", subtitle: account.joined(separator: ", ")))
    }
    return items
  }
}

extension ExpenseDetailCellItem: Identifiable {
  var view: some View {
    HStack {
      Text(id)
      Spacer()
      Text(subtitle)
    }
  }
}

struct ExpenseDetailsView: View {
  let items: [ExpenseDetailCellItem]
  let title: String
  var body: some View {
    NavigationView {
      List {
          ForEach(self.items) { item in
            item.view
          }
      }
      .listStyle(.grouped)
      .navigationBarTitle(self.title)
    }
  }
}

#if DEBUG
struct ExpenseDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ExpenseDetailsView(
      items: ExpenseDetailCellItem.items(from: Data.fixedEntries[0]),
      title: Data.fixedEntries[0].title
    )
  }
}
#endif
