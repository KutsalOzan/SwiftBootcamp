//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by MacBookPro on 30.01.2025.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var mesaj:String?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let m = mesaj{
            print("OyunEkraniVc : \(m)")
        }
    }
    

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
