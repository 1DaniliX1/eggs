//
//  SecondViewController.swift
//  eggs2(task)last
//
//  Created by raccoonsky on 6/1/18.
//  Copyright © 2018 raccoonsky. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
  
    @IBOutlet weak var stateButton: UIButton!
    var buttonPresses = 0
    @IBAction func stateButton(_ sender: Any) {
        buttonPresses += 1
        
        
        
        if buttonPresses <= 5{
            self.stateButton.setImage(#imageLiteral(resourceName: "ima1"), for: .normal)
        } else if buttonPresses <= 12 {
            self.stateButton.setImage(#imageLiteral(resourceName: "ima2"), for: .normal)
        } else if buttonPresses <= 19 {
            self.stateButton.setImage(#imageLiteral(resourceName: "ima3"), for: .normal)
        } else if buttonPresses > 19 {
            self.stateButton.setImage(#imageLiteral(resourceName: "ima6"), for: .normal)
        }
        
    }
    
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "segue", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ViewController
        viewController.myInt = buttonPresses
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
    }

   

    
}
