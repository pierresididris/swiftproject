//
//  ListDetailView.swift
//  ProjetSwiftUI
//
//  Created by user176320 on 7/11/20.
//  Copyright © 2020 user176320. All rights reserved.
//

import SwiftUI


struct ImageOverlay: View {
    var body: some View {
        ZStack{
            HStack(alignment: .center){
                NavigationLink(destination: PodcastPlayer()) {
                    Button(action: {
                    }) {
                        Image(systemName: "play.fill")
                            .font(.headline)
                    }.frame(width: 50.0, height: 50.0).foregroundColor(.blue).opacity(0.5)
                }
            }
            
        }
//        ZStack {
//            Text("Credit: Ricardo Gomez Angel")
//                .font(.callout)
//                .padding(6)
//                .foregroundColor(.white)
//        }.background(Color.black)
//        .opacity(0.8)
//        .cornerRadius(10.0)
//        .padding(6)
    }
}


struct ListDetailView: View {
    
    var item: ListElement
    
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
                HStack{
                    Image(item.image)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .overlay(ImageOverlay(), alignment: .leading)
                }
                Text(item.text)
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(item: ListElement(icon: "", image: "", title: "", text: ""))
    }
}
