//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by MacBookPro on 30.01.2025.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelAnasayfa.text = "Anasayfa"
    }

    @IBAction func buttonYap(_ sender: Any) {
        
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: "merhaba")
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metod calisti")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis calisti")
            if let veri = sender as? String{
                print("Veri : \(veri)")
                
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.mesaj = veri
            }
        }
    }
    
    
}

