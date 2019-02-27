//
//  DataServices.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import Foundation

class DataServices {
    static let instance = DataServices()
    
    private var menuArray = [
        Menu(title: "Hakkımızda"),
        Menu(title: "Komitelerimiz"),
        Menu(title: "Duyurular"),
        Menu(title: "Projelerimiz"),
        Menu(title: "Etkinliklerimiz"),
        Menu(title: "Eğitimlerimiz"),
        Menu(title: "Sosyal Medya"),
        Menu(title: "İletişim"),
    ]
    
    func getMenuArray() -> [Menu] {
        return menuArray
    }
}
