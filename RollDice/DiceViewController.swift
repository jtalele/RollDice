//
//  DiceViewController.swift
//  RollDice
//
//  Created by Jitendr Talele on 5/19/16.
//  Copyright © 2016 JTalele. All rights reserved.
//

import Foundation
import UIKit

class DiceViewController: UIViewController {
    
    var firstValue: Int?
    var secondValue: Int?
    
    @IBOutlet var firstDie: UIImageView!
    @IBOutlet var secondDie: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        
        // The dice will only appear if firstValue and secondValue have been set
        if let firstValue = self.firstValue {
            self.firstDie.image = UIImage(named: "die\(firstValue)")
        } else {
            self.firstDie.image = nil;
        }
        
        if let secondValue = self.secondValue {
            self.secondDie.image = UIImage(named: "die\(secondValue)")
        } else {
            self.secondDie.image = nil
        }
        
        self.firstDie.alpha = 0
        self.secondDie.alpha = 0
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.3) {
            self.firstDie.alpha = 1
            self.secondDie.alpha = 1
        }
    }
    
    /**
     * accepts a conditional Int, and returns an dice image, or nil
     */
    
    func imageForValue(value: Int?) -> UIImage? {
        return nil
    }
    
    /**
     *    dismiss this view controller
     */
    @IBAction func dismiss() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}

