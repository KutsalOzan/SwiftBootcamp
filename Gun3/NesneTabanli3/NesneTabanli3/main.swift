//
//  main.swift
//  NesneTabanli3
//
//  Created by MacBookPro on 29.01.2025.
//

import Foundation

class Ev{
    var pencereSayisi:Int?
    
    init(pencereSayisi:Int){
        self.pencereSayisi = pencereSayisi
    }
}

class Saray: Ev{
    var kuleSayisi:Int?
    
    init(kuleSayisi:Int,pencereSayisi:Int){
        self.kuleSayisi = kuleSayisi
        super.init(pencereSayisi: pencereSayisi)
    }
}

class Villa: Ev{
    var garajVarMi:Bool?
    
    init(garajVarMi:Bool,pencereSayisi:Int){
        self.garajVarMi = garajVarMi
        super.init(pencereSayisi: pencereSayisi)
    }
}

let topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 5)
let bogazVilla = Villa(garajVarMi: true, pencereSayisi: 10)
print(topkapiSarayi.kuleSayisi!)
print(topkapiSarayi.pencereSayisi!)

print(bogazVilla.garajVarMi!)
print(bogazVilla.pencereSayisi!)

//Override

class Hayvan{
    func sesCikar(){
        print("Sesim  yok")
    }
}
class Memeli : Hayvan{
    
    
}
class Kedi : Memeli{
    override func sesCikar() {
        print("Miyav Miyav")
    }
}
class Kopek : Memeli{
    override func sesCikar() {
        print("Hav Hav")
    }
}
let hayvan = Hayvan()
let memeli = Memeli()
let kedi = Kedi()
let kopek = Kopek()
hayvan.sesCikar()//Kalitim Yok kendi fonk calistirdi
memeli.sesCikar()//Kalitim var ve ust sinifin fonksiyonunu calistirdi
kedi.sesCikar()//Kalitim var ve kendi metodlarini kullaniyorlar
kopek.sesCikar()//Kalitim var ve kedni metodlarini kullaniyorlar

//Tip donusumu

//Upcasting
var ev = Saray(kuleSayisi: 3, pencereSayisi: 5) as Ev

//DownCasting

var saray = Ev(pencereSayisi: 6) as? Saray
//Tip Kontrolu

if ev is Ev{
    print("Nesne ev sinifindandir")
    
}else{
    print("Nesne ev sinifindan degildir")
}

protocol MyProtocol{
    var degisken:Int{get set}
    
    func metod1()
    func metod2() -> String
    
}
class ClassA : MyProtocol{
    var degisken: Int = 10
    
    func metod1() {
        print("Metod1 calisti")
    }
    func metod2() -> String{
        return "Metod 2 calisti"
    }
    
}

var a = ClassA()
print(a.degisken)
a.metod1()
print(a.metod2())

//Extension

extension Int {
    func carp(sayi:Int) -> Int{
        return  self * sayi
    }
}

let x = 3.carp(sayi: 5)
print(x)
//Closure
let ifade = {
    print("Merhaba")
}
ifade()
