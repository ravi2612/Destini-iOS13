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
    
    var storybrain = StoryBrain()
    
    override func viewDidLoad() {
        _ = Story(title: "You see a fork in the road", choice1: "Take a left", choice2: "Take a right", choice1Destination:  1, choice2Destination: 1)
        
        
       
        super.viewDidLoad()

    }
    @IBAction func choiceMade(_ sender: UIButton) {
        
    }


}

