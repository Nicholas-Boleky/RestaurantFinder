//
//  LocationDataManager.swift
//  RestaurantReviewApp
//
//  Created by Nicholas Boleky on 7/13/22.
//

import Foundation

class LocationDataManager {
    
    private var locations: [String] = []
    
    private func loadData() -> [[String : AnyObject]] {
        guard let path = Bundle.main.path(forResource: "Locations", ofType: "plist"),
              let items = NSArray(contentsOfFile: path)
        else {
            return [[:]]
              }
        return items as! [[String : AnyObject]]
    }
    
    func fetch() {
        for location in loadData() {
            if let city = location["city"] as? String,
               let state = location["state"] as? String {
                locations.append("\(city), \(state)")
            }
        }
    }
    
    func numberOfItems() -> Int {
        return locations.count
    }
    
    func locationItem(at index: IndexPath) -> String {
        return locations[index.item]
    }
    
}
