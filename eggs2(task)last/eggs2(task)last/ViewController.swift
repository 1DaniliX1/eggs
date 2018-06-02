//
//  ViewController.swift
//  eggs2(task)last
//
//  Created by raccoonsky on 6/1/18.
//  Copyright © 2018 raccoonsky. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    var myInt = Int()
    override func viewDidLoad() {
        super.viewDidLoad()
        numberLabel.text = "Number of hits: \(myInt)"
    }

    


}

