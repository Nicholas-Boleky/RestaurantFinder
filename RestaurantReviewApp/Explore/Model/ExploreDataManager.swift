//
//  ExploreDataManager.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/12/22.
//

import Foundation

class ExploreDataManager: DataManager {
    
    fileprivate var items: [ExploreItem] = []
    
    func fetch() {
        for data in load(file: "ExploreData") {
            items.append(ExploreItem(dict: data))
        }
    }
    
    func numberOfItems() -> Int {
        return items.count
    }
    
    func explore(at index: IndexPath) -> ExploreItem {
        return items[index.item]
    }
    
}
