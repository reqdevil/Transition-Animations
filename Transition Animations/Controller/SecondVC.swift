//
//  SecondVC.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit
import Hero // Animation Library

class SecondVC: UIViewController {
    @IBOutlet weak var greyView: UIView!
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var whiteView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Enable animation library to make animation
        self.hero.isEnabled = true
        
        // Give items exact id from the coming view else animation will not work
        self.greyView.hero.id = "greyView"
        self.redView.hero.id = "redView"
        self.whiteView.hero.id = "whiteView"
        
        // Create a TAP gesture to change view
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changeView))
        
        // Add TAP gesture to the view that want to change view
        // Mine is redView so...
        redView.addGestureRecognizer(gesture)
    }
    
    @objc func changeView() {
        self.dismiss(animated: true, completion: nil) // I don't 
    }
}
