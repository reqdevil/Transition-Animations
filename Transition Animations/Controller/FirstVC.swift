//
//  FirstVC.swift
//  Transition Animations
//
//  Created by Aj Styles on 27.02.2019.
//  Copyright © 2019 Berk Er. All rights reserved.
//

import UIKit
import Hero // Importing library

class FirstVC: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var selectedIndex: IndexPath?
    var committees = [Committees]()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hero.isEnabled = true
        
        committees = DataServices.instance.getCommitteesArray()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? SecondVC {
            vc.selectedIndex = self.selectedIndex
        }
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

extension FirstVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataServices.instance.getCommitteesArray().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommitteesCell", for: indexPath) as? CommitteesCell {
            let committee = committees[indexPath.row]
            cell.updateViews(committee: committee)
            cell.hero.id = committee.title // Give necessary items id to make animation
            return cell
        }
        
        return CommitteesCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedIndex = indexPath
        performSegue(withIdentifier: "toSecondVC", sender: UICollectionViewCell.self)
    }
}
