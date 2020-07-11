//
//  ContentView.swift
//  ProjetSwiftUI
//
//  Created by user176320 on 7/11/20.
//  Copyright © 2020 user176320. All rights reserved.
//

import SwiftUI

//struct ResultView: View{
//    var choice: String
//
//    var body: some View{
//        Text("You chose \(choice)")
//    }
//}


//struct ContentView: View {
//    var body: some View {
//        NavigationView{
//            NavigationLink(destination: Text("Second view")){
//                Text("Next >")
//            }
//        .navigationBarTitle("Sports")
//
//
//        }
//
//    }
//}

struct ResultView:View{
    var choice: String;
    
    
    var body: some View{
        Text("You chose \(choice)")
    }
    
}

struct PodcastView: View{
    
    var body: some View{
        NavigationView{
            VStack{
                Text("test");	
                
            }
        }
        
    }
    
}

struct ContentView:View {
    
    @State private var sportCategoryIndex = 0;
    
    var sportsCategories = ["Physique", "Mental", "Vehicule", "Coordination", "Animaux"];
    
    var body: some View {
        
            NavigationView{
                
                    VStack{
                                               
                        Picker(selection: $sportCategoryIndex, label: Text("")){
                            ForEach(0 ..< sportsCategories.count){
                                Text(self.sportsCategories[$0]).tag($0)
                            }
                        }.labelsHidden()
                        
                        NavigationLink(destination: ResultView(choice: "\(sportCategoryIndex)")){
                            Text("Next >")
                        }.padding(100)
                        
                    }
                    
                    
                .navigationBarTitle("Sports")
                    
            }
            
            
            
        
        
            
    
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
