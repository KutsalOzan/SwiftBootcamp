//
//  SayfaB.swift
//  Odev4
//
//  Created by MacBookPro on 2.02.2025.
//

import UIKit

class SayfaB: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func buttonSayfaY(_ sender: Any) {
        performSegue(withIdentifier: "SayfaY", sender: nil)
    }
    
    
}
