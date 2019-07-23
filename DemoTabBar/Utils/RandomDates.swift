//
//  RandomDates.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import Foundation

struct RandomDates {
  let formatter: DateFormatter

  init() {
    formatter = DateFormatter()
    formatter.dateFormat = "yyyy/MM/dd"
  }

  var get: Date? {
    let year = "2019", month = "07"
    let day = Int.random(in: 1...2)
    return formatter.date(from: "\(year)/\(month)/\(day)")
  }

  var get1Jul: Date? {
    let year = "2019", month = "07"
    return formatter.date(from: "\(year)/\(month)/1")
  }

  var get2Jul: Date? {
    let year = "2019", month = "07"
    return formatter.date(from: "\(year)/\(month)/2")
  }
}
