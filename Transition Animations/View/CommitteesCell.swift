//
//  CommitteesCell.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit

class CommitteesCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var descriptionn: UILabel!
    @IBOutlet weak var imageName: UIImageView!
    
    func updateViews(committee: Committees) {
        title.text = committee.title
        descriptionn.text = committee.description
        imageName.image = UIImage(named: committee.imageName)
    }
}
