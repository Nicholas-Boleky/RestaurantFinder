//
//  ExploreDataManager.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/12/22.
//

import Foundation

class ExploreDataManager {
    
    fileprivate var items: [ExploreItem] = []
    
    fileprivate func loadData() -> [[String:AnyObject]] {
        guard let path = Bundle.main.path(forResource: "ExploreData", ofType: "plist"),
              let items = NSArray(contentsOfFile: path) else {
                  return [[:]]
              }
        return items as! [[String:AnyObject]]
    }
    
    func fetch() {
        for data in loadData() {
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
