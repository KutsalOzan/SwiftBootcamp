//
//  main.swift
//  NesneTabanli
//
//  Created by MacBookPro on 28.01.2025.
//

import Foundation

class Araba{
    var marka:String?
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Bos init metodu calisti")
    }
    init(renk:String,marka:String,hiz:Int, calisiyorMu:Bool){
        self.renk = renk//self bulundugu sinifi temsil eder
        self.hiz = hiz
        self.marka = marka
        self.calisiyorMu = calisiyorMu//Shadowing : golgeleme
        print("Dolu init metodu calisti")
    }
    func calistir(){//Side effect!
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz!  += kacKm
    }
    func yavasla(kacKm:Int){
        hiz! -= kacKm
    }
    
    func bilgiAl(){
        print("-------------------------")
        print("\(marka!) ozellikleri")
        print("Renk : \(renk!)")
        print("Hiz : \(hiz!)")
        print("Calisiyor mu : \(calisiyorMu!)")
    }
}

//Nesne olusturma
var bmw = Araba(renk: "Siyah", marka: "Bmw", hiz: 50, calisiyorMu: true)
//Deger atama
//bmw.marka = "BMW"
//bmw.renk = "Siyah"
//bmw.calisiyorMu = true
//bmw.hiz = 150
//Deger okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 10)
bmw.yavasla(kacKm: 4)
bmw.bilgiAl()
var sahin = Araba()
sahin.marka = "Tofas"
sahin.renk = "Beyaz"
sahin.calisiyorMu = false
sahin.hiz = 0

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()

