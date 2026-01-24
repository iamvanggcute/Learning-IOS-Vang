//
//  ViewController.swift
//  LasVegas_App
//
//  Created by nguyễn văn vang on 24/1/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var XucSac_1: UIImageView!
    @IBOutlet weak var XucSac_2: UIImageView!
    @IBOutlet weak var XucSac_3: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        XucSac_1.image = UIImage (named : diceImages[0])
//        XucSac_2.image = UIImage (named : diceImages[0])
//        XucSac_3.image = UIImage (named : diceImages[0])
        
    }
   
    @IBAction func RollCick(_ sender: UIButton) {
        let ramdonIndex1 = Int.random(in: 0..<diceImages.count)
        let ramdonIndex2 = Int.random(in: 0..<diceImages.count)
        let ramdonIndex3 = Int.random(in: 0..<diceImages.count)
        
        XucSac_1.image = UIImage (named : diceImages[ramdonIndex1])
        XucSac_2.image = UIImage (named : diceImages[ramdonIndex2])
        XucSac_3.image = UIImage (named : diceImages[ramdonIndex3])
        
        
    }
    private let diceImages = [
    "dice1",
    "dice2",
    "dice3",
    "dice4",
    "dice5",
    "dice6"
]
    

}

