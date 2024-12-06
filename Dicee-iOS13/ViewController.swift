//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let imageListName:[String] = ["DiceOne",
                                  "DiceTwo",
                                  "DiceThree",
                                  "DiceFour",
                                  "DiceFive",
                                   "DiceSix"
                                            ]
    @IBOutlet weak var MainContainer: UIStackView!
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var diceImageView3: UIImageView!
    
    @IBOutlet weak var diceImageView4: UIImageView!
    
    @IBOutlet weak var diceImageView5: UIImageView!
    
    @IBOutlet weak var diceImageView6: UIImageView!
    
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleOrientationChange),
            name: UIDevice.orientationDidChangeNotification,
            object: nil)
        // Do any additional setup after loading the view.
    }

    func pickRandome() -> String {
        return imageListName.randomElement()!
       
    }
    
    @objc func handleOrientationChange(){
        if(UIDevice.current.orientation.isLandscape){
            MainContainer.axis = .horizontal
        }else{
            MainContainer.axis = .vertical
        }
    }
    
    @IBAction func onChangeImages(_ sender: UIButton) {
        
        diceImageView1?.image = UIImage(imageLiteralResourceName:pickRandome())
        diceImageView2?.image = UIImage(imageLiteralResourceName:pickRandome())
        diceImageView3?.image = UIImage(imageLiteralResourceName:pickRandome())
        diceImageView4?.image = UIImage(imageLiteralResourceName:pickRandome())
        diceImageView5?.image = UIImage(imageLiteralResourceName:pickRandome())
        diceImageView6?.image = UIImage(imageLiteralResourceName:pickRandome())
               
    }
    
     
}


