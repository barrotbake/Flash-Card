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
        // Do any additional setup after loading the view.
    }
    @IBAction func didTapFlashCard(_ sender: Any) {
        frontLabel.isHidden = true
    }
    

}

