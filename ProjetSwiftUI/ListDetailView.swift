//
//  ListDetailView.swift
//  ProjetSwiftUI
//
//  Created by user176320 on 7/11/20.
//  Copyright © 2020 user176320. All rights reserved.
//

import SwiftUI
import SafariServices

struct ListDetailView: View {
    
    var item: ListElement
    
    
    
    struct ImageOverlay: View {
        var podcasturl : String
        var body: some View {
            
            HStack{
                Spacer()
                Button(action: {
                    UIApplication.shared.open(URL(string: self.podcasturl)!, options: [:], completionHandler: nil)
                }) {
                    Image(systemName: "play.fill")
                        .resizable()
                        .frame(width: 100, height: 100).foregroundColor(.gray).opacity(0.9)
                }
                Spacer()
            }

        }
    }
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(item.icon)
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text(item.title)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }.frame(minWidth: 0, maxWidth: .infinity)
                Image(item.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .overlay(ImageOverlay(podcasturl : self.item.link), alignment: .leading)
                
                Text(item.text)
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(item: ListElement(icon: "", image: "", title: "", text: "", link:""))
    }
}
