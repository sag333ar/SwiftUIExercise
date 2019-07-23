//
//  Unique.swift
//  DemoTabBar
//
//  Created by sagar kothari on 23/07/19.
//  Copyright © 2019 sagar kothari. All rights reserved.
//

import Foundation

extension Array where Element : Hashable {
  var unique: [Element] {
    return Array(Set(self))
  }
}
