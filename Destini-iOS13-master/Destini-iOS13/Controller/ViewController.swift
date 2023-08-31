//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var storyBrain = StoryBrain()
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
updateUi()
    }


    @IBAction func choicePressed(_ sender: UIButton) {
        
        storyBrain.updateStory(userChoice:sender.currentTitle!)
    updateUi()
        
    }
    func updateUi(){
        storyLabel.text = storyBrain.getStoryLable()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

