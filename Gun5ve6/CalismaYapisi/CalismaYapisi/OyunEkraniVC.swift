//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by MacBookPro on 30.01.2025.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi:Kisiler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi{
            print("-----OyunEkraniVC-----")
            print("Kisi adi : \(k.ad!)")
            print("Kisi yasi : \(k.yas!)")
            print("Kisi boyu : \(k.boy!)")
            print("Kisi bekarligi : \(k.bekar!)")
            
        }
    }
    

    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    
    @IBAction func buttonGeri(_ sender: Any) {
        //navigationController?.popViewController(animated: true)//Bir onceki sayfaya donus
        
        navigationController?.popToRootViewController(animated: true)//Anasayfaya donus
    }
    
}
