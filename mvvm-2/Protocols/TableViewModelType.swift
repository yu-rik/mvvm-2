//
//  TableViewModelType.swift
//  mvvm-2
//
//  Created by yurik on 8/18/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import Foundation
//протокол по SOLID
protocol TableViewModelType {
    var numbersOfRows: Int {get}
    var profiles: [Profile] {get}
}
