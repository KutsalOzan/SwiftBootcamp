//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by MacBookPro on 30.01.2025.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    
    //Leading -left
    //Trailing -right
    
    
    override func viewDidLoad() { //Uygulama ilk acildiginda calisir bir kere calisir
        super.viewDidLoad()
        labelAnasayfa.text = "Anasayfa"
        print("viewDidLoad calisti")
    }
    
    override func viewWillAppear(_ animated: Bool) {//Sayfa her gorundugunda calisir sayfaya geri dondugunda calisir kisacasi
        print("viewWillAppear calisti")
    }
    
    override func viewWillDisappear(_ animated: Bool) {//Sayfa her gorunmez oldugunda  calisir
        print("viewWillDissappear calisti")
    }

    @IBAction func buttonYap(_ sender: Any) {
        labelAnasayfa.text = "Merhaba"
    }
    
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ozan", yas: 20, boy: 1.89, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu calisti")
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraninaGecis calisti")
            
            if let veri = sender as? Kisiler {
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
        }
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("Add secildi")
    }
    
    
    @IBAction func buttonSave(_ sender: Any) {
        
        print("Save secildi")
    }
    
}

