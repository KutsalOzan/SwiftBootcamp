//
//  main.swift
//  Optional
//
//  Created by MacBookPro on 28.01.2025.
//

import Foundation

//Tanimlama
var mesaj = "Merhaba"
//Optional = Nullable = Null Safety
var str:String?
 str = "Merhaba"
if str != nil {
    print(str!)
}else{
    print("Bostur")
}
//optional binding
if let temp = str {
    print(temp)//otomatik unwrap
}else{
    print("str nil deger iceriyor")
}

if var temp = str {
    print(temp)//otomatik unwrap
    temp = "Nasilsin"
}else{
    print("str nil deger iceriyor")
}
