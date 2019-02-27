//
//  Committees.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import Foundation

struct Committees {
    private(set) public var title: String
    private(set) public var description: String
    private(set) public var imageName: String
    
    init(title: String, description: String, imageName: String) {
        self.title = title
        self.description = description
        self.imageName = imageName
    }
}
