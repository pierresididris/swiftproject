//
//  PodcastPlayer.swift
//  SwiftPodcast
//
//  Created by Lucie Oliveira on 06/07/2020.
//  Copyright © 2020 groupedix. All rights reserved.
//

import Foundation

import SwiftUI
import AVKit

struct PodcastPlayer: View {
    @State var audioPlayer: AVAudioPlayer!

    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Text("Rain").font(.system(size: 45)).fontWeight(.bold).navigationBarHidden(true)
                        .foregroundColor(.blue).background(Image("Image").resizable()
                            .frame(width: 900, height: 900)
                        .aspectRatio(contentMode: .fit)
)
                }
                HStack {
                    Spacer()
                    Button(action: {
                        self.audioPlayer.play()
                    }) {
                        Image(systemName: "play.circle.fill").resizable()
                            .frame(width: 50, height: 50)

                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.green)
                    }
                    Spacer()
                    Button(action: {
                        self.audioPlayer.pause()
                    }) {
                        Image(systemName: "pause.circle.fill").resizable()
                            .frame(width: 50, height: 50)

                            .aspectRatio(contentMode: .fit)
                            .foregroundColor(.red)

                    }

                    Spacer()
                }
            }
        }
        .onAppear {
            let sound = Bundle.main.path(forResource: "rain-03", ofType: "mp3")
            self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))

        }

    }
}

struct PodcastPlayer_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
