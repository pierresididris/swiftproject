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
    
    @State private var formSportCollIndvIndex = 0;
    var formSportsCollIndv = ["Collectif", "Individuel"];


    @State var firstname: String = ""
    @State var lastname: String = ""
    @State var description: String = ""

    
    @State var isShowPicker: Bool = false
    @State var image: Image? = Image("placeholder")

    
    var body: some View {

        TabView{
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
                    .navigationBarTitle("Trouver votre podcast")
                

            }.tabItem {
                Image(systemName: "doc.text.magnifyingglass")
                Text("Consulter")
            }
            
            NavigationView{
                Form {
                   Section(header: Text("Autheur")) {
                       TextField("Nom", text: $firstname)
                       TextField("Prénom", text: $lastname)
                       
                   }
                   
                   Section(header: Text("description")) {
                        TextField("resumé", text: $description)
//                       MultilineTextView(text: $description)
                   }
                   Section(header: Text("Categorie")){
                       VStack{
                           Picker(selection: $sportCategoryIndex, label: Text("Categrie")){
                               ForEach(0 ..< sportsCategories.count){
                                   Text(self.sportsCategories[$0]).tag($0)
                               }
                           }.pickerStyle(DefaultPickerStyle())
                       }
                       VStack{
                           Picker(selection: $formSportCollIndvIndex, label: Text("type")){
                                   ForEach(0 ..< formSportsCollIndv.count){
                                       Text(self.formSportsCollIndv[$0]).tag($0)
                                   }
                               }.pickerStyle(DefaultPickerStyle())
                       }
                   }
                   Section(header: Text("image")){
                       ZStack {
                           HStack {
                               VStack(alignment: .leading) {
                                   image?
                                       .resizable()
                                       .scaledToFit()
                                       .frame(height: 150)
                                   
                               }
                               VStack(alignment: .leading){
                                   Button(action: {
                                       withAnimation {
                                           self.isShowPicker.toggle()
                                       }
                                   }) {
                                       Image(systemName: "plus.square")
                                           .font(.headline)
                                   }.foregroundColor(.blue)
                               }
                           }.sheet(isPresented: $isShowPicker) {
                               ImagePicker(image: self.$image)
                           }
                           
                           
                       }
                   }
                   
                   Section {
                       Button(action: {
                           print("Perform an action here...")
                       }) {
                           Text("Partager le podcast")
                       }
                   }
               }
               .navigationBarTitle("Proposer un podcast")
            }.tabItem {
                    Text("Proposer")
                    Image(systemName: "waveform.path.badge.plus")
            }
        }
        
        
    }
    

}

struct MultilineTextView: UIViewRepresentable {
    @Binding var text: String

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.isScrollEnabled = true
        view.isEditable = true
        view.isUserInteractionEnabled = true
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
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
                        }.labelsHidden().frame(height: 50.0)
                            .pickerStyle(SegmentedPickerStyle())
                            .scaledToFit()
                            .scaleEffect(CGSize(width: 1.5, height: 1.5))
                        NavigationLink(destination: PodcastsView(choiceCategorySport: "\(choice)", choiceCollectifIndiv: "\(sportCollIndvIndex)")){
                            Text("Next >")
                        }.padding(100)
                    }
                    .navigationBarTitle("Trouver votre podcast")
            


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
                _ = 3;
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
                    _ = 3;
            }
            
            break;
        default:
            //throw exception
            _ = 4;
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
            }.navigationBarTitle("Meilleurs Podcast")
            
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

struct ImagePicker: UIViewControllerRepresentable {

    @Environment(\.presentationMode)
    var presentationMode

    @Binding var image: Image?

    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

        @Binding var presentationMode: PresentationMode
        @Binding var image: Image?

        init(presentationMode: Binding<PresentationMode>, image: Binding<Image?>) {
            _presentationMode = presentationMode
            _image = image
        }

        func imagePickerController(_ picker: UIImagePickerController,
                                   didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let uiImage = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
            image = Image(uiImage: uiImage)
            presentationMode.dismiss()

        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            presentationMode.dismiss()
        }

    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentationMode: presentationMode, image: $image)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: UIImagePickerController,
                                context: UIViewControllerRepresentableContext<ImagePicker>) {

    }

}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
