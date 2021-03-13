//
//  ViewController.swift
//  Flash Card
//
//  Created by Jacob Nguyen on 2/13/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frontLabel.layer.cornerRadius = 20
        
    }
    
    @IBAction func didTapFlashCard(_ sender: Any) {
        if frontLabel.isHidden {
            frontLabel.isHidden = false
        } else {
            frontLabel.isHidden = true
        }
    }
    
    func updateFlashcard(question: String, answer: String) {
        frontLabel.text = question
        backLabel.text = answer
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
    }

}

