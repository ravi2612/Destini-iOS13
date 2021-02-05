//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation




struct StoryBrain {
    var num = 0
    let stories = [
        Story(
            title: "You see a fork in the road",//[1][1]
            choice1: "Take left",//[1][2]
            choice2: "Take right"),//[1][3]
        Story(
            title: "You see a tiger ",//[2][1]
            choice1: "Shout for help",//[2][2]
            choice2: "Play dead."),//[2][3]
        Story(
            title: "You find a treasure chest",//[3][1]
            choice1: "Open it. ",//[3][2]
            choice2: "Check for traps")//[3][3]
    ]
    
    func getQuestionText() -> String {
        return stories[num].title
        
    }
    func getChoiceText2() -> String {
        return stories[num].choice2
    }
    func getChoiceText1() -> String {
        return stories[num].choice1
        
    }
   mutating func nextTitle() -> Int {
    
    if num < stories.count {
            num += 1
        } else {
            num = 0
        }
    return num
    }
                    
    
    
}
    
    
  
