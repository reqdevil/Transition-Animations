//
//  SecondVC.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit
import Hero

class SecondVC: UIViewController {
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var brownView: UIView!
    @IBOutlet weak var cyanView: UIView!
    @IBOutlet weak var greenView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true

        blackView.hero.id = "blackView"
        blackView.hero.modifiers = [.arc]
        blueView.hero.id = "blueView"
        blueView.hero.modifiers = [.arc]
        brownView.hero.id = "brownView"
        brownView.hero.modifiers = [.arc]
        cyanView.hero.id = "cyanView"
        cyanView.hero.modifiers = [.arc]
        greenView.hero.id = "greenView"
        greenView.hero.modifiers = [.arc]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
