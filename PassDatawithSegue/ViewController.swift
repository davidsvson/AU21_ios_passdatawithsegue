//
//  ViewController.swift
//  PassDatawithSegue
//
//  Created by David Svensson on 2021-11-19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBox: UITextField!
    
    let segueToSecondViewId = "segueToView2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: segueToSecondViewId, sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueToSecondViewId {
            let destinationVC = segue.destination as! DisplayResultViewController
            destinationVC.recivingMessage = textBox.text
        }
    }
    
    
    @IBAction func unwindToSratView(segue: UIStoryboardSegue)
    {}
    
    
    
}

