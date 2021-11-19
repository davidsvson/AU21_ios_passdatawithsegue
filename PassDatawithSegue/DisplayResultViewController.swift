//
//  DisplayResultViewController.swift
//  PassDatawithSegue
//
//  Created by David Svensson on 2021-11-19.
//

import UIKit

class DisplayResultViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    var recivingMessage : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        messageLabel.text = recivingMessage
        
    }
    

    
}
