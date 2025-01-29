//
//  main.swift
//  NesneTabanli2
//
//  Created by MacBookPro on 29.01.2025.
//

import Foundation


class Fonksiyonlar{
    //Geri donus degeri olmayan (void)
    
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //Geri donus deger olan (return)
    
    func selamla2() -> String{
        let sonuc = "Merhaba Ahmet"
        return sonuc
    }
    //Parametre kullanimi
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    
    func toplama(sayi1:Int,sayi2:Int)-> Int{
        let toplam = sayi1 + sayi2
        return toplam
    }
    //Overloading
    func carpma(sayi1:Int,sayi2:Int){
        print("Carpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1:Double,sayi2:Double){
        print("Carpma : \(sayi1 * sayi2)")
    }
    func carpma(sayi1:Int,sayi2:Int,isim:String){
        print("Carpma : \(sayi1 * sayi2) ve islemi yapan \(isim)")
    }
}

let f = Fonksiyonlar()
f.selamla1()
let stringdeger = f.selamla2( )
f.selamla3(isim: "Ozan")
let toplam = f.toplama(sayi1: 5, sayi2: 10)
print(toplam)
f.carpma(sayi1: 5, sayi2: 10)
f.carpma(sayi1: 3.0, sayi2: 2.3)
f.carpma(sayi1: 5, sayi2: 10, isim: "Ozan")

//Static Degiskenler ve metodlar
class Asinifi{
    static var x = 10
    
    static func metod(){
        print("Metod Calisti")
    }
}

let a = Asinifi()
//print(a.x)
//a.metod( )

//print(Asinifi().x)//Sanal nesne -virtual object -isimsiz nesne

print(Asinifi.x)
Asinifi.metod( )

//Enumeration

enum KonserveBoyut{
    case kucuk
    case orta
    case buyuk
}
func ucretHesapla(boyut:KonserveBoyut,adet:Int){
    switch boyut{
    case KonserveBoyut.buyuk: print("Fiyat : \(adet * 45)")
    case .orta : print("Fiyat : \(adet * 25)")
    case .kucuk : print("Fiyat : \(adet * 12)")
    }
}

ucretHesapla(boyut: .orta, adet: 100)


//Composition
class Kategoriler {
    var kategori_id:Int?
    var kategori_ad:String?
    
    init(kategori_id:Int,kategori_ad:String){
        self.kategori_id = kategori_id
        self.kategori_ad = kategori_ad
    }
}

class Yonetmenler {
    var yonetmen_id:Int?
    var yonetmen_ad:String?

    init(yonetmen_id:Int,yonetmen_ad:String){
        self.yonetmen_ad = yonetmen_ad
        self.yonetmen_id = yonetmen_id
    }
}

class Filmler{
    var  film_id:Int?
    var film_ad:String?
    var film_yil:Int?
    var kategori:Kategoriler?
    var yonetmen:Yonetmenler?
    
    init(film_id:Int,film_ad:String,film_yil:Int,kategori:Kategoriler,yonetmen:Yonetmenler){
        self.film_ad = film_ad
        self.film_id = film_id
        self.film_yil = film_yil
        self.kategori = kategori
        self.yonetmen = yonetmen
    }
}

let k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram")
let k2 = Kategoriler(kategori_id: 2, kategori_ad: "Komedi")

let y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino")
let y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Nuri Bilge Ceylan")

let f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1)
print("Film id : \(f1.film_id!)")
print("Film ad : \(f1.film_ad!)")
print("Film yili : \(f1.film_yil!)")
print("Film kategori : \(f1.kategori!.kategori_ad!)")
print("Film yonetmeni : \(f1.yonetmen!.yonetmen_ad!)")
