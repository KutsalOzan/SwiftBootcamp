//
//  SayfaA.swift
//  Odev4
//
//  Created by MacBookPro on 2.02.2025.
//

import UIKit

class SayfaA: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonB(_ sender: Any) {
        performSegue(withIdentifier: "SayfaB", sender: nil)
    }
    
}
