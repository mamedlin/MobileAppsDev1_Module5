//
//  ViewController.swift
//  MobileAppsDev1_Module5
//
//  Created by Michael Medlin on 11/7/23.
//

import UIKit






class ViewController: UIViewController {
    
    var adventurelogic = adventureLogic()
    
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var sceneArt: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSelected(_ sender: UIButton) 
    {
        if(sender == buttonOne)
        {
            adventurelogic.setNextPath(1)
        }
        else
        {
            adventurelogic.setNextPath(2)
        }
        updateUI()
    }
    
    @objc func updateUI()
    {
        if(adventurelogic.isDeadEnd())
        {
            buttonOne.setTitle("Play again", for: .normal)
            buttonTwo.isEnabled = false
            buttonTwo.alpha = 0
        }
        else
        {
            buttonOne.setTitle(adventurelogic.getChoiceOne(), for: .normal)
            buttonTwo.setTitle(adventurelogic.getChoiceTwo(), for: .normal)
            buttonTwo.isEnabled = true
            buttonTwo.alpha = 1
        }
        
        outputLabel.text = adventurelogic.getPathDesc()
        sceneArt.image = UIImage(named: String(adventurelogic.getPathIndex() + 1))

    }
}

