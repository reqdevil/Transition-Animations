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
    
    private let committeesArray: [Committees] = [
        Committees(title: "Computer Society", description: "Bilgisayarın ve teknolojinin gelişimi...", imageName: "menu.jpeg"),
        Committees(title: "Robotics and Autonomous Society", description: "Robotların Dünya'yı ele geçirmesi...", imageName: "menu.jpeg"),
        Committees(title: "Women in Engineering", description: "Kadınlar ve mühendisler... Stronger together...", imageName: "menu.jpeg"),
        Committees(title: "Power and Energy Society", description: "Enerjinin ve yaşamın gelişimi...", imageName: "menu.jpeg"),
        Committees(title: "Aerospace and Electronics System Society", description: "Uçakların, uzayın ve elektroniğin gelişimi...", imageName: "menu.jpeg"),
        Committees(title: "Engineering in Medicine and Biology Society", description: "Mühendisiğin tıpla birleşimi ve hastalıkların yok oluşu...", imageName: "menu.jpeg")
    ]
    
    func getCommitteesArray() -> [Committees] {
        return committeesArray
    }
}
