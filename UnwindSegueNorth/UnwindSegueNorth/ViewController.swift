//
//  ViewController.swift
//  UnwindSegueNorth
//
//  Created by user on 1/17/18.
//  Copyright © 2018 jon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mainDirection = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonIsClicked(_ sender: UIButton) {
        
        self.mainDirection = (sender.titleLabel?.text!)!
        goToSegue()
    }
    
    func goToSegue() {
        
        performSegue(withIdentifier: "directionSegue", sender: self)
    }
    
    
    @IBAction func unWindAction(unwindSegue: UIStoryboardSegue){}

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let mySegue = segue.destination as? DirectionViewController {
            
            mySegue.direction = self.mainDirection
            print("made it " + mySegue.direction!)
        }
    }
}

