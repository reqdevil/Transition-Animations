//
//  Menu.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import Foundation

struct Menu {
    private var _title: String
    
    public var title: String {
        return _title
    }
    
    init(title: String) {
        self._title = title
    }
}
