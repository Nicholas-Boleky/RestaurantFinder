//
//  RestaurantListViewController.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/10/22.
//

import UIKit

class RestaurantListViewController: UIViewController, UICollectionViewDelegate {
    
    @IBOutlet weak var colectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//MARK: Private Extension
private extension RestaurantListViewController {
    //code goes here
}

//MARK: UICollectionViewDataSource
extension RestaurantListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath)
    }
}
