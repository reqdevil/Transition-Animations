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
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.hero.modifiers = [.cascade]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? ThirdVC, let index: Int = sender as? Int {
            let array = DataServices.instance.getMenuArray()
            let title = array[index].title
            vc.view.hero.modifiers = [.source(heroID: title)]
            vc.centerLabel.hero.id = title
            vc.centerLabel.text = title
            vc.centerLabel.hero.modifiers = [.durationMatchLongest]
        }
    }
}

extension SecondVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataServices.instance.getMenuArray().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MenuCell", for: indexPath) as? MenuCell {
            let menu = DataServices.instance.getMenuArray()[indexPath.row]
            cell.updateViews(menu: menu)
            cell.title.hero.id = menu.title
            cell.hero.modifiers = [.fade, .scale(0.5)]
            return cell
        }
        
        return MenuCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toThirdVC", sender: indexPath.row)
    }
}
