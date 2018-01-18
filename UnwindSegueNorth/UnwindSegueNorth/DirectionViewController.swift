//
//  NorthViewController.swift
//  UnwindSegueNorth
//
//  Created by user on 1/17/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class DirectionViewController: UIViewController {

    var direction: String?
    
    @IBOutlet var directionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(direction)
        directionLabel.text = direction
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
