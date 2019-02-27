//
//  FirstVC.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit
import Hero

class FirstVC: UIViewController {
    @IBOutlet weak var viewButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true

        let gesture = UITapGestureRecognizer(target: self, action: #selector(changeView))
        viewButton.addGestureRecognizer(gesture)
    }

    @objc func changeView() {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
}
