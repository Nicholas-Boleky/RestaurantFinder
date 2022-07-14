//
//  ExploreItem.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/12/22.
//

import Foundation

struct ExploreItem {
    
    var name: String
    var image: String
    
}

extension ExploreItem {
    
    init(dict:[String:AnyObject]) {
        self.name = dict["name"] as! String
        self.image = dict["image"] as! String
    }
    
}
