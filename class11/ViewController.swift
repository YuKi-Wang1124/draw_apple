//
//  ViewController.swift
//  class11
//
//  Created by 王昱淇 on 2021/9/14.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var appleLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var patternSegmentedControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func changeApple(_ sender: UISlider) {
        sender.value = sender.value.rounded()
        let number = Int(sender.value)
        var content = ""
        numberLabel.text = "\(number)"
        
        if patternSegmentedControl.selectedSegmentIndex == 0 {
            sender.maximumValue = 15
            for _ in 1...number {
                for _ in 1...number {
                    content = content + "🍎"
                }
                content = content + "\n"
            }
        } else if patternSegmentedControl.selectedSegmentIndex == 1 {
            sender.maximumValue = 15
            for i in 1...number {
                for _ in 1...i {
                    content = content + "🍎"
                }
                content = content + "\n"
            }
        } else if patternSegmentedControl.selectedSegmentIndex == 2 {
            sender.maximumValue = 8
            for i in 1...number {
                for _ in i..<number {
                       content = content + "     "
                   }
                let count = i * 2 - 1
                for _ in 1...count {
                    content = content + "🍎"
                }
                content = content + "\n"
            }
        } else if patternSegmentedControl.selectedSegmentIndex == 3 {
            sender.maximumValue = 8
            var blankCount = number - 1
            var appleCount = 1
            for i in 1...number * 2 - 1 {
                for _ in 0..<blankCount {
                    content = content + "     "
                }
                for _ in 1...appleCount {
                    content = content + "🍎"
                }
                if i < number {
                    blankCount = blankCount - 1
                    appleCount = appleCount + 2
                } else {
                    blankCount = blankCount + 1
                    appleCount = appleCount - 2
                }
                content = content + "\n"
            }
            numberLabel.text = "\(number * 2 - 1)"
        }
        appleLabel.text = content
    }
    
    
    
}

