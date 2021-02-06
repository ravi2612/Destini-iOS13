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
            t: "You see a fork in the road",//[1][1]
            c1: "Take left",
            c2: "Take right",
            cd1: 1,
            cd2: 2//[1][2]
            ),//[1][3]
        Story(
            t: "You see a tiger ",//[2][1]
            c1: "Shout for help",
            c2: "Play dead.",
            cd1: 3,
            cd2: 4//[2][2]
            ),//[2][3]
        Story(
            t: "You find a treasure chest",//[3][1]
            c1: "Open it. ",
            c2: "Check for traps",
            cd1: 5,
            cd2: 6//[3][2]
            )//[3][3]
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
    
    mutating func checkChoice(userAnswer: String) -> Int{
        if userAnswer == stories[num].choice1 {
            return stories[num].choiceDestination1
        }else {
            return stories[num].choiceDestination2
        }
    }
    
    
   mutating func nextTitle()  {
    
    if num < stories.count {
            num += 1
        } else {
            num = 0
        }
    }
                    
    
    
}
    
    
  
