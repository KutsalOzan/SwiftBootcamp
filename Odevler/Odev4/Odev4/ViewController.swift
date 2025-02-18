//
//  ViewController.swift
//  Odev4
//
//  Created by MacBookPro on 2.02.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
    }


    @IBAction func buttonSayfaA(_ sender: Any) {
        performSegue(withIdentifier: "SayfaA", sender: nil)
    }
    
    
    @IBAction func buttonSayfaX(_ sender: Any) {
        performSegue(withIdentifier: "SayfaX", sender: nil)
    }
    
   
    
}

