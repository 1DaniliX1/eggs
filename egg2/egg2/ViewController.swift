//
//  ViewController.swift
//  egg2
//
//  Created by raccoonsky on 5/10/18.
//  Copyright © 2018 raccoonsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var eggLabel: UILabel!
    @IBOutlet weak var eggButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.eggButton.setImage(#imageLiteral(resourceName: "e1"), for: .normal)
       
    }
    var buttonPresses = 0
   @IBAction func eggButton(_ sender: UIButton) {
       
       buttonPresses += 1
    
            
    
   if buttonPresses == 1{
        self.eggButton.setImage(#imageLiteral(resourceName: "e2"), for: .normal)
    } else if buttonPresses == 2 {
        self.eggButton.setImage(#imageLiteral(resourceName: "e3"), for: .normal)
    } else if buttonPresses >= 3 {
        self.eggButton.setImage(nil, for: .normal)
        self.eggButton.frame = CGRect(x: 87, y: 283, width: 220, height: 100)
        self.eggButton.setTitle("The egg is broken,press reset", for: .normal)
    }
    self.eggLabel.text = "Number of hits: \(buttonPresses)"
    }
    
    @IBAction func resetButton(_ sender: Any) {
        self.eggButton.frame = CGRect(x: 37, y: 238, width: 300, height: 300)
        self.buttonPresses = 0
        self.eggButton.setImage(#imageLiteral(resourceName: "e1"), for: .normal)
        self.eggLabel.text = "Number of hits: \(buttonPresses)"
    }
}



