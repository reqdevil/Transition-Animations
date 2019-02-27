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
    @IBOutlet weak var blackView: UIView!
    @IBOutlet weak var blueView: UIView!
    @IBOutlet weak var brownView: UIView!
    @IBOutlet weak var cyanView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true 
        
        blackView.hero.id = "blackView"
        blueView.hero.id = "blueView"
        brownView.hero.id = "brownView"
        cyanView.hero.id = "cyanView"
        greenView.hero.id = "greenView"
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(changeView))
        stackView.addGestureRecognizer(gesture)
    }
    
    @objc func changeView() {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
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
