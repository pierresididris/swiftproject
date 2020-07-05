//
//  Aliment.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 05/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import Foundation

struct Aliment: Comparable {
    let name: String
//    let isVegan: Bool
//    let isVeggie: Bool

    static func < (lhs: Aliment, rhs: Aliment) -> Bool {
        return lhs.name < rhs.name
     }
}
