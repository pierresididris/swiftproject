//
//  ContentView.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 04/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//


import SwiftUI

struct SportType: Identifiable {
    var id: Int = 0
    var name: String
    var sports: [Sport]
}

struct Sport: Identifiable {
    var id: Int = 0
    var name: String
}

class Model: ObservableObject {
    let sportPodcast: [SportType] = [
        SportType(id: 0, name: "Individuel", sports: [
            Sport(id: 0, name: "judo"),Sport(id: 1, name: "boxe"),Sport(id: 2, name: "karate"),Sport(id: 3, name: "tir à l'arc")
        ]),
        SportType(id: 1, name: "Collectifs", sports: [
            Sport(id: 0, name: "football"),Sport(id: 1, name: "handball"),Sport(id: 2, name: "rugby"),Sport(id: 3, name: "voleyball")
        ])
    ]

    @Published var selectedType: Int = 0 {
        willSet {
            selectedSport = 0
            id = UUID()
            print("country changed")
        }
    }
    @Published var id: UUID = UUID()
    @Published var selectedSport: Int = 0
    var sportTypeNames: [String] {
        sportPodcast.map { (sportType) in
            sportType.name
        }
    }
    var sportNamesCount: Int {
        sportNames.count
    }
    var sportNames: [String] {
        sportPodcast[selectedType].sports.map { (sport) in
            sport.name
        }
    }
}

struct ContentView: View {
    @ObservedObject var model = Model()
    var body: some View {

        return VStack {
            Text("Bonjour User ")
            Section(header: Text("Choisissez un type de sport")) {
              Picker(selection: $model.selectedType, label: Text("")){
                  ForEach(0 ..< model.sportTypeNames.count){ index in
                      Text(self.model.sportTypeNames[index])
                  }
              }.labelsHidden()
              .clipped()
            }
            Section(header: Text("Choisissez le sport qui vous interresse")) {
              Picker(selection: $model.selectedSport, label: Text("")){
                  ForEach(0 ..< model.sportNamesCount){ index in
                      Text(self.model.sportNames[index])
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
