//
//  SayfaY.swift
//  Odev4
//
//  Created by MacBookPro on 2.02.2025.
//

import UIKit

class SayfaY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonBasaDon(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)//Anasayfaya donus
    }
    

}
