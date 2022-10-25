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
    
//    let story0 = "You see a fork in the road"
//    let choice1 = "Take a left"
//    let choice2 = "Take a right"
//
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
//        storyLabel.text = story0
//        choice1Button.setTitle(choice1, for: .normal)
//        choice2Button.setTitle(choice2, for: .normal)
    
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
//        if sender.currentTitle == storyBrain.getchoice1() {
//            storyLabel.text = "You see a tiger."
//        } else if sender.currentTitle == storyBrain.getchoice2() {
//            storyLabel.text =  "You find a treasure chest."
//        } else {
//            print("error")
//        }
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1Button.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    

}

