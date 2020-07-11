//
//  ContentView.swift
//  ProjetSwiftUI
//
//  Created by user176320 on 7/11/20.
//  Copyright © 2020 user176320. All rights reserved.
//

import SwiftUI

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
                    .navigationBarTitle("PodcastSuggester")
            }


    }

}

struct ResultView:View{
    var choice: String;
    
    @State private var sportCollIndvIndex = 0;

    var sportsCollIndv = ["Collectif", "Individuel"];
    
    var body: some View {

            
                    VStack{
                        Picker(selection: $sportCollIndvIndex, label: Text("")){
                            ForEach(0 ..< sportsCollIndv.count){
                                Text(self.sportsCollIndv[$0]).tag($0)
                            }
                        }.labelsHidden().frame(height: 60)
                            .pickerStyle(SegmentedPickerStyle())
                            .scaledToFit()
                            .scaleEffect(CGSize(width: 1.5, height: 1.5))
                        NavigationLink(destination: PodcastsView(choiceCategorySport: "\(choice)", choiceCollectifIndiv: "\(sportCollIndvIndex)")){
                            Text("Next >")
                        }.padding(100)
                    }
                    .navigationBarTitle("PodcastSuggester")
            


    }
    
}


func BoolToString(b: Bool?)->String { return b?.description ?? "<None>"}

struct PodcastsView: View {
    
    var choiceCategorySport: String;
    var choiceCollectifIndiv: String;
    @State private var showingAlert = false
    
    func test() -> [ListElement]{
        //["Collectif", "Individuel"]
        //["Physique", "Mental", "Vehicule", "Coordination", "Animaux"]
        
        switch choiceCollectifIndiv {
        case "0":
            
            switch choiceCategorySport {
                case "0":
                    return Service.listPhysiqueCollectif
                    
                case "1":
                    return Service.listMentalCollectif;
                    
                case "2":
                    return Service.listVehicCollectif;
                    
                case "3":
                    return Service.listCoordinCollectif;
                    
                case "4":
                    return Service.listAnimauxCollectif;
                    
            

                default:
                    let b = 3;
            }
            
            
            break;
        case "1":
            
            switch choiceCategorySport {
                case "0":
                    return Service.listPhysiqueIndiv
                    
                case "1":
                    return Service.listMentalIndiv;
                    
                case "2":
                    return Service.listVehicIndiv;
                    
                case "3":
                    return Service.listCoordinIndiv;
                    
                case "4":
                    return Service.listAnimauxIndiv;
            

                default:
                    let b = 3;
            }
            
            break;
        default:
            //throw exception
            let a = 4;
        }
        
        return Service.listPhysiqueCollectif;
    }
    
    var body: some View {
        
        
        let a = test();
        //Service.listPodcasts
        
        let b  = List(a) { item in
                NavigationLink(destination: ListDetailView(item: item)) {
                    ListElementView(item: item)
                }
            }.navigationBarTitle("Best Podcasts")
            
        return b;
            
        
        
        
//            Button("Show Alert") {
//            self.showingAlert = true
//        }
//
//        .alert(isPresented: $showingAlert) {
//            Alert(title: Text(BoolToString(b: choiceCategorySport == "0")), message: Text(BoolToString(b: choiceCollectifIndiv == "1")), dismissButton: .default(Text("OK")))
//        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
