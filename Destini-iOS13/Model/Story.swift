//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Story {
    var title: String
    var choice1: String
    var choice2: String
    var choiceDestination1: Int
    var choiceDestination2: Int
   
    init(t: String, c1: String, c2: String, cd1: Int, cd2: Int) {
        title = t
        choice1 = c1
        choice2 = c2
        choiceDestination1 = cd1
        choiceDestination2 = cd2
    }
    
}
