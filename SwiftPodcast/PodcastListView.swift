//
//  PodcastListView.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 05/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import Foundation
import SwiftUI

struct Podcast: Identifiable {
    var id = UUID()
    var image: String
    var PodcastName: String
    var description: String
}

let modelData: [Podcast] = [
    Podcast(image: "info.circle", PodcastName: "podcast de test", description: "Comment atteindre ses obljectif d'entrainement"),
    Podcast(image: "info.circle", PodcastName: "podcast de test", description: "Comment atteindre ses obljectif d'entrainement"),
    Podcast(image: "sun.max", PodcastName: "podcast de test", description: "Comment atteindre ses obljectif d'entrainement"),
    Podcast(image: "sun.max", PodcastName: "podcast de test", description: "Comment atteindre ses obljectif d'entrainement"),
    Podcast(image: "info.circle", PodcastName: "podcast de test", description: "Comment atteindre ses obljectif d'entrainement")];


struct PodcastListView: View {
    var body: some View {
        List(modelData) { podcast in
            HStack {
                // 2.
                Image(systemName: podcast.image)
                    .frame(width: 50, height: 10, alignment: .leading)
                Text(podcast.PodcastName)
                    .frame(width: 100, height: 10, alignment: .leading)
                VStack {
                    Text(podcast.description)
                    .frame(width: 100, height: 10, alignment: .leading)
                }
            }.font(.title)
        }
        
    }
}


struct PodcastListView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastListView()
    }
}
