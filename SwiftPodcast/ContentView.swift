//
//  ContentView.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 04/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import SwiftUI

struct Country: Identifiable {
    var id: Int = 0
    var name: String
    var cities: [City]
}

struct City: Identifiable {
    var id: Int = 0
    var name: String
}

class Model: ObservableObject {
    let countries: [Country] = [
        Country(id: 0, name: "Individuel", cities: [
            City(id: 0, name: "judo"),City(id: 1, name: "boxe"),City(id: 2, name: "karate"),City(id: 3, name: "tir à l'arc")
        ]),
        Country(id: 1, name: "Collectifs", cities: [
            City(id: 0, name: "football"),City(id: 1, name: "handball"),City(id: 2, name: "rugby"),City(id: 3, name: "voleyball")
        ])
    ]

    @Published var selectedContry: Int = 0 {
        willSet {
            selectedCity = 0
            id = UUID()
            print("country changed")
        }
    }
    @Published var id: UUID = UUID()
    @Published var selectedCity: Int = 0
    var countryNemes: [String] {
        countries.map { (country) in
            country.name
        }
    }
    var cityNamesCount: Int {
        cityNames.count
    }
    var cityNames: [String] {
        countries[selectedContry].cities.map { (city) in
            city.name
        }
    }
}

struct ContentView: View {
    @ObservedObject var model = Model()
    var body: some View {

        return VStack {
            Text("Bonjour User ")
            Section(header: Text("Choisissez un type de sport")) {
              Picker(selection: $model.selectedContry, label: Text("")){
                  ForEach(0 ..< model.countryNemes.count){ index in
                      Text(self.model.countryNemes[index])
                  }
              }.labelsHidden()
              .clipped()
            }
            Section(header: Text("Choisissez le sport qui vous interresse")) {
              Picker(selection: $model.selectedCity, label: Text("")){
                  ForEach(0 ..< model.cityNamesCount){ index in
                      Text(self.model.cityNames[index])
                  }
              }
              // !! changing views id force SwiftUI to recreate it !!
              .id(model.id)
              .labelsHidden()
              .clipped()
            }
            
            Section {
                Button(action: {
                    print("Perform an action here...")
                }) {
                    Text("Rechercher les podcasts")
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
