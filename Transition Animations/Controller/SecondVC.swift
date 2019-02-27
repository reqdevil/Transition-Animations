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
    
    var selectedIndex: IndexPath?
    var committees = [Committees]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.layoutIfNeeded()
        
        committees = DataServices.instance.getCommitteesArray()
        
        self.hero.isEnabled = true
        self.hero.modalAnimationType = .slide(direction: .down)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.reloadData()
        collectionView.scrollToItem(at: selectedIndex!, at: .centeredHorizontally, animated: false)
        collectionView.isScrollEnabled = false
    }
}

extension SecondVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return view.frame.size
    }
}
