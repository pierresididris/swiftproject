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
    
    
    
    func showSafari(for url: String){
        guard let url = URL(string:url) else{
            //alert
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        safariVC.present(safariVC, animated: true);
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
                
                Button(action: {
                    UIApplication.shared.open(URL(string: self.item.link)!, options: [:], completionHandler: nil)
                }){
                    Text("More Info >")
                }
                
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
