//
//  Meal.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 05/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import Foundation

struct Podcast: Equatable, CustomStringConvertible, Identifiable {
    static func == (lhs: Podcast, rhs: Podcast) -> Bool {
        <#code#>
    }
    

    
    let id = UUID()
    var name: String
    var price: Double
    var pitch: String
    var category: Category
    var sportType: Type
    var components: [Aliment]?
    var allergens: [String] {
        return []
    }
    var calories: Double?
    var isVegan: Bool {
        return true
    }
    var isVeggie: Bool {
        #warning("Don't forget")
        return true
    }

    var description: String {
        return "\(name) : \(price)€"
    }
}
