//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by MacBookPro on 1.02.2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "Uyari"
            ayarlarItem.badgeValue = "10"
        }
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
        renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
        renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
        
    }
    
    func renkDegistir(itemAppearance:UITabBarItemAppearance){
        //Secili durum
        itemAppearance.selected.iconColor = UIColor.systemYellow
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemYellow]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        //Secili olmayan durum
        itemAppearance.normal.iconColor = UIColor.systemPurple
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.systemBlue]
        itemAppearance.normal.badgeBackgroundColor = UIColor.systemOrange
    }
}

