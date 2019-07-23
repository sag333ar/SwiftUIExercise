//
//  Double+Currency.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import Foundation

extension Double {
  var inCurrency: String {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter.string(for: self) ?? ""
  }
}
