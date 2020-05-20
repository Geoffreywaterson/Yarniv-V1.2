//
//  ViewController.swift
//  Yarniv V1.2
//
//  Created by Geoffrey Waterson on 2020-05-18.
//  Copyright © 2020 Geoffrey Waterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var LeftCardImage: UIImageView!
    @IBOutlet weak var RightCardImage: UIImageView!
    @IBOutlet weak var ScoreLabel: UILabel!
      
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func DealTapped(_ sender: Any) {
        
        print("Deal button tapped")
        
        // What happens to the Left Card
        let LeftScoreRandomNumber = arc4random_uniform(13) + 1
        print("Left Score Random Number = \(LeftScoreRandomNumber)")
        
        LeftCardImage.image = UIImage(named: "card\(LeftScoreRandomNumber)")
        
        // What happens to the Right Card
        let RightScoreRandomNumber = arc4random_uniform(13) + 1
        print("Right Score Random Number = \(RightScoreRandomNumber)")
        
        RightCardImage.image = UIImage(named: "card\(RightScoreRandomNumber)")
        
        
        // What happens to the Score Label
        let TotalScore = LeftScoreRandomNumber + RightScoreRandomNumber
        ScoreLabel.text = ("\(TotalScore)")
        
        
    }
    
    
    
    
    
}

