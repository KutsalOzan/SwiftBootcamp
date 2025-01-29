//
//  main.swift
//  Odev2
//
//  Created by MacBookPro on 29.01.2025.
//

import Foundation

//Parametre olarak girilen kilometreyi mile donusturdukten sonra geri donduren bir metod yaziniz

func Hesapla(km:Double) -> Double{
    let mile : Double = km * 0.621
    return mile
}
let milHesabi = Hesapla(km: 30)
print(milHesabi)
//Kenarlari parametre olarak girilen ve dikdortgenin alanini hesaplayan bir metod yaziniz
func DikAlan(kisaKenar:Int,uzunKenar:Int){
    let alan = kisaKenar * uzunKenar
    print("Dikdortgenin alani \(alan)")
}
DikAlan(kisaKenar: 50, uzunKenar: 30)
//Parametre olarak girilen sayinin faktoriyel degerini hesaplayip geri donduren metodu yaziniz
func Faktoriyel(sayi:Int) -> Int{
    var faktoriyel = 1
    for i in stride(from: sayi, through: 1, by: -1){
        faktoriyel = faktoriyel * i
    }
    return faktoriyel
   
}
let faktoriyelHesap = Faktoriyel(sayi: 3)
print(faktoriyelHesap)
//Parametre olarak girilen kelime icinde kac adet o harfi oldugunu gosteren bir metod yaziniz
func HarfSayisi(kelime:String,harf:Character){
    var sayi = 0
    for i in kelime{
        if i == harf{
            sayi += 1
        }
    }
    print("\(harf) harfinden \(sayi) kere var")
}
HarfSayisi(kelime: "merhaba", harf: "a")
//Parametre olarak girilen kenar sayisina gore her bir ic aciyi hesaplayip sonucu geri gonderen metod yaziniz
func IcAciHesapla(kenarsayisi : Int) -> Int{
    let Icacilartoplam = ((kenarsayisi - 2 ) * 180)
    return Icacilartoplam
}
let toplamIcAcilar = IcAciHesapla(kenarsayisi: 4)
print("Ic Acilar Toplami : \(toplamIcAcilar)")


//Parametre olarak girilen gun sayisina gore maas hesabi yapan elde edilen degeri donduren metod yaziniz
func MaasHesabi(gunSayisi:Int) -> Int{
    let calismasaati = gunSayisi * 8
    var calismasaatiucreti = calismasaati * 40
    if calismasaati > 150 {
        calismasaatiucreti += 80
    }
    return calismasaatiucreti
}
let toplamUcret = MaasHesabi(gunSayisi: 20)
print(toplamUcret)
//Parametre olarak girilen otopark suresine gore otopark ucreti hesaplayarak geri donduren metodu yaziniz
func OtoparkHesapla(otoparkSuresi: Int) -> Int{
    var otoparkucreti = 50
    if otoparkSuresi >= 1 {
        
        for _ in stride(from: 1, through: (otoparkSuresi - 1), by: 1){
            otoparkucreti = otoparkucreti + 10
            
        }
                
        print("Otopark ucretiniz \(otoparkucreti)")
    }
    else
    {
        print("Dogru sure giriniz")
    }
  
    return otoparkucreti
}
 let otoparkHesabi = OtoparkHesapla(otoparkSuresi: 4)
print(otoparkHesabi)
