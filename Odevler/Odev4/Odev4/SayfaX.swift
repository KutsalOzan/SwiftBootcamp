//
//  SayfaX.swift
//  Odev4
//
//  Created by MacBookPro on 2.02.2025.
//

import UIKit

class SayfaX: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func sayfaYgecis(_ sender: Any) {
        performSegue(withIdentifier: "SayfaY", sender: nil)
    }
    

}
