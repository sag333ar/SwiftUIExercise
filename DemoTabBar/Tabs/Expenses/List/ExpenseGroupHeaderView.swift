//
//  ExpenseGroupHeaderView.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

struct ExpenseGroupHeaderView: View {
  let id: String
  let amount: Double

  init(_ group: ExpenseGroup) {
    self.id = group.id
    self.amount = group.amount
  }

  var body: some View {
    HStack {
      Text(id)
      Spacer()
      Text(amount.inCurrency)
    }
  }
}

#if DEBUG
struct ExpenseGroupHeaderView_Previews: PreviewProvider {
    static var previews: some View {
      ExpenseGroupHeaderView(Data.groups[0])
    }
}
#endif
