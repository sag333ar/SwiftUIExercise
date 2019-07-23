//
//  ExpensesListView.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

struct ExpensesListView: View {
    var expenses: [Expense]
    var body: some View {
        NavigationView {
            List(expenses) { expense in
                ExpenseCell(expense: expense)
            }
            .listStyle(.grouped)
            .navigationBarTitle("Expenses")
        }
    }
}

#if DEBUG
struct ExpensesListView_Previews: PreviewProvider {
    static var previews: some View {
        ExpensesListView(expenses: Expense.fixedEntries)
    }
}
#endif
