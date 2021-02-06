//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
   var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        updateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        
        let userChoice = storyBrain.checkChoice(userAnswer: userAnswer)
        
        if userChoice == 1 {
            storyLabel.text = storyBrain.stories[1].title
            choice1Button.setTitle(storyBrain.stories[1].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.stories[1].choice2, for: .normal )
            
        }else {
            storyLabel.text = storyBrain.stories[2].title
            choice1Button.setTitle(storyBrain.stories[2].choice1, for: .normal)
            choice2Button.setTitle(storyBrain.stories[2].choice2, for: .normal)
        }
        
        
       
       
        
    }
    
    @objc func updateUI(){
        storyLabel.text = storyBrain.getQuestionText()
        choice1Button.setTitle(storyBrain.getChoiceText1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoiceText2(), for: .normal)
        
        
    }

}
