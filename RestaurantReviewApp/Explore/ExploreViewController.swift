//
//  ExploreViewController.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/10/22.
//

import UIKit

class ExploreViewController: UIViewController, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let manager = ExploreDataManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
}

//MARK: Private Extension
private extension ExploreViewController {
    func initialize() {
        manager.fetch()
    }
    @IBAction func unwindLocationCancel(segue: UIStoryboardSegue) {
        
    }
}
//MARK: UICollectionViewDataSource
extension ExploreViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        manager.numberOfItems()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "exploreCell", for: indexPath) as! ExploreCellCollectionViewCell
        let item = manager.explore(at: indexPath)
        cell.lblName.text = item.name
        cell.imgExplore.image = UIImage(named: item.image)
        return cell
    }
}
