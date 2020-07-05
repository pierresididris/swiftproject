//
//  InitialView.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 05/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        NavigationView {
            ContentView()
           NavigationLink(destination: PodcastListView()) {
              Text("Press on me")
           }.buttonStyle(PlainButtonStyle())
        }
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
