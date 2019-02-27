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
        self.hero.isEnabled = true
        
        committees = DataServices.instance.getCommitteesArray()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.scrollToItem(at: selectedIndex!, at: .centeredHorizontally, animated: false)
    }
}

extension SecondVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataServices.instance.getCommitteesArray().count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CommitteesCell", for: indexPath) as? CommitteesCell {
            let committee = committees[indexPath.row]
            cell.updateViews(committee: committee)
            cell.hero.id = committee.title // Give necessary items id to make animation
            print("Success")
            return cell
        }
        
        print("Failed")
        return CommitteesCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return view.frame.size
    }
}
