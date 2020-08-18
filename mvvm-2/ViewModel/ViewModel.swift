//
//  ViewModel.swift
//  mvvm-2
//
//  Created by yurik on 8/18/20.
//  Copyright © 2020 yurik. All rights reserved.
//

import Foundation

class ViewModel: TableViewModelType {
    
  //заполнение массива Profile
   var profiles = [
        Profile(name: "Yurik", secondName: "Nosachenko", age: 36),
        Profile(name: "Mark", secondName: "Nosachenko", age: 1),
        Profile(name: "Yulia", secondName: "Didenko", age: 26)
    ]
    
    var numbersOfRows: Int {
        return profiles.count
    }
}
