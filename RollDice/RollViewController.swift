//
//  ViewController.swift
//  RollDice
//
//  Created by Jitendr Talele on 5/19/16.
//  Copyright © 2016 JTalele. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    /**
     * Randomly generates an Int from 1 to 6
     */
    func randomDiceValue() -> Int {
        // Generate a random Int32 using arc4Random
        let randomValue = 1 + arc4random() % 6
        
        // Return a more convenient Int, initialized with the random value
        return Int(randomValue)
    }
    
    @IBAction func rollTheDice() {
        /*var controller: DiceViewController
         
         controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
         
         controller.firstValue = self.randomDiceValue()
         controller.secondValue = self.randomDiceValue()
         
         presentViewController(controller, animated: true, completion: nil)
         */
        var controller:DiceViewController
        controller = self.storyboard?.instantiateViewControllerWithIdentifier("DiceViewController") as! DiceViewController
        controller.firstValue=self.randomDiceValue()
        controller.secondValue=self.randomDiceValue()
        self.presentViewController(controller, animated: true, completion: nil)
    }
}

