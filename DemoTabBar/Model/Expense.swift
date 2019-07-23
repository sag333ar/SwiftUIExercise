//
//  Expense.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import SwiftUI

// Model
struct Expense {
  var id: Int
  let amount: Double
  let date: Date?
  let title: String
  let account: String?
  let wallet: String?
  let category: String?
  let tags: [String]?
  let location: String?
}
