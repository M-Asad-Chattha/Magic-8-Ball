//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Muhammad Asad Chattha on 14/10/2019.
//  Copyright © 2019 Muhammad Asad Chattha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonTaped(_ sender: UIButton) {
        
        randomBallNumber = Int(arc4random_uniform(5))
        
        //print(randomIndex)
        
        ballImageView.image = UIImage(named: ballArray[randomBallNumber])
        
    }
    
}

