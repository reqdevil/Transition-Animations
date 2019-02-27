//
//  MenuCell.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    
    func updateViews(menu: Menu) {
        title.text = menu.title
    }
}
