//
//  Restaurant.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 05/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import Foundation

class Restaurant {

    let name: String
    private var menu: [Meal]

    init(name: String) {
        self.name = name
//        menu = [Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: .main, components: [Aliment(name: "Farine"), Aliment(name: "Tomate"), Aliment(name: "Fromage")], calories: nil), Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: .main, components: [Aliment(name: "Farine"), Aliment(name: "Tomate"), Aliment(name: "Fromage")], calories: nil)]
        menu = [Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", components: [Aliment(name: "Farine"), Aliment(name: "Tomate"), Aliment(name: "Fromage")]),
                Meal(name: "Pizza", price: 11.5, pitch: "Une spécialité italienne", category: <#Meal.Category#>, components: [Aliment(name: "Farine"), Aliment(name: "Tomate"), Aliment(name: "Fromage")])]
    }

    func add(_ meal: Meal) {
        guard !menu.contains(meal) else {
            //on arrete la fonction
            return
        }
        menu.append(meal)
    }

    func remove(_ meal: Meal) {
        // Essayer retirer un meal du tableau
        if let idx = menu.firstIndex(of: meal) {
            menu.remove(at: idx)
        }
    }

    func all() -> [Meal] {
        return menu
    }
}
