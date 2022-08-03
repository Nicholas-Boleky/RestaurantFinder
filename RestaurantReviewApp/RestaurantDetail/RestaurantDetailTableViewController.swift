//
//  RestaurantDetailTableViewController.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 8/1/22.
//

import UIKit

class RestaurantDetailTableViewController: UITableViewController {

    var selectedRestaurant: RestaurantItem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dump(selectedRestaurant as Any)
    }

}
