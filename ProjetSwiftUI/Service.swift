//
//  Service.swift
//  ProjetSwiftUI
//
//  Created by user176320 on 7/11/20.
//  Copyright © 2020 user176320. All rights reserved.
//

import Foundation

struct Service{
    
    //["Physique", "Mental", "Vehicule", "Coordination", "Animaux"]
    //["Collectif", "Individuel"]
    
    static let listPhysiqueCollectif: [ListElement] = [
        
        
        ListElement(icon: Constants.IconNames.icon1, image: Constants.ImageNames.image1, title: "The Bill Simmons Podcast", text: "HBO and The Ringer's Bill Simmons hosts the most downloaded sports podcast of all time, with a rotating crew of celebrities, athletes, and media staples, as well as mainstays like Cousin Sal, Joe House, and a slew of other friends and family members who always happen to be suspiciously available."),
        
        ListElement(icon: Constants.IconNames.icon2, image: Constants.ImageNames.image2, title: "The Herd with Colin Cowherd", text: "The Herd with Colin Cowherd is a thought-provoking, opinionated, and topic-driven journey through the top sports stories of the day. Frequency 1 episode / week "),
        
        ListElement(icon: Constants.IconNames.icon3, image: Constants.ImageNames.image3, title: "Men In Blazers | Podcast about Soccer", text: "We discuss football. And wear blazers. Usually at the same time. Men in Blazers is driven by the belief that Soccer is Americas Sport of the Future. As it has been since 1972. Frequency 3 episodes / week ")
        
    ]
    
    static let listPhysiqueIndiv: [ListElement] = [
        
        ListElement(icon: Constants.IconNames.icon4, image: Constants.ImageNames.image4, title: "Dans La Tête D’un Coureur", text: "Le 1er podcast francophone dédié à la course à pied et à la préparation mentale. Des conseils avisés, des interviews d'athlètes inspirants et du lifestyle Running ! Retrouvez-nous également sur Instagram, facebook et sur notre site internet http://www.danslateteduncoureur.fr"),
        
        ListElement(icon: Constants.IconNames.icon5, image: Constants.ImageNames.image5, title: "Jogging Bonito", text: "Podcast de Runnisme. Un podcast hors piste sur le Running aka la course à pied, ses dérivés, sa culture et son environnement. #Courseapied #Running #Sports"),
        
        ListElement(icon: Constants.IconNames.icon6, image: Constants.ImageNames.image6, title: "Swing", text: "Chaque semaine, l'équipe du Journal du Golf vous donne rendez-vous pour un débat autour de l'actualité du golf dans L'Equipe Golf.")
    ];
    
    static let listMentalCollectif: [ListElement] = [
        ListElement(icon: Constants.IconNames.icon7, image: Constants.ImageNames.image7, title: "Superfail", text: "D'où viennent les échecs ? Quels rapports les mathématiques et les échecs ont-ils entretenu ? Peut-on résoudre le jeu d'échecs (au sens mathématique) ?Comment construire un programme informatique qui joue aux échecs ? Comment fonctionnait Deep Blue? Quel est le secret de sa victoire contre Kasparov?"),
        
        ListElement(icon: Constants.IconNames.icon8, image: Constants.ImageNames.image8, title: "États Dame", text: "En quelques heures en France, nous avons basculé dans un autre monde. Le monde du CORONAVIRUS et du CONFINEMENT. Ce podcast est le journal de bord d’une femme comme les autres, qui vit le confinement comme tout le monde, et qui met juste des mots dessus. Une petite réflexion quotidienne sur ce que nous inspire cet enfermement inattendu. Produit par Qude, sur une idée originale de Milia Legasa."),
        
        ListElement(icon: Constants.IconNames.icon9, image: Constants.ImageNames.image9, title: "Découverte du jeu de GO", text: "Ce samedi 13 janvier, un atelier jeu de go vous est proposé à la médiathèque de Perpignan. Il s'agit du plus ancien jeu de stratégie de Chine.")
    ];
    static let listMentalIndiv: [ListElement] = [
        
        ListElement(icon: Constants.IconNames.icon10, image: Constants.ImageNames.image10, title: "SpeedCubeReview", text: "Welcome to the SpeedCubeReview Podcast. This is a bi-weekly show dedicated towards speed cubing news, records, history, interviews, and giveaways!"),
        
        ListElement(icon: Constants.IconNames.icon11, image: Constants.ImageNames.image11, title: "Petite philosophie du puzzle", text: "Le puzzle aura été l'une des vedettes inattendues de ce confinement, en séduisant les enfants et leurs parents. C'est l'occasion de philosopher sur ce jeu dont les ventes ont explosé de façon spectaculaire depuis deux mois."),
        
        ListElement(icon: Constants.IconNames.icon12, image: Constants.ImageNames.image12, title: "Cane and Rinse", text: "Do you have an opinion about a game we’re covering that you’d like read out on the podcast? Then venture over to our forum and check out the list of upcoming games we’re covering. Whilst there you can join in the conversations with our friendly community in discussing all things relating to videogames, along with lots of other stuff too. Sound good? Then come and say hello at The Cane and Rinse forum")
    ];
    
    static let listVehicCollectif: [ListElement] = [
        
        ListElement(icon: Constants.IconNames.icon13, image: Constants.ImageNames.image13, title: "SPIN, The Rally Pod", text: "Here at DirtFish, we seek to bring the entertainment of rallying to the world through every medium we can. A big part of our output is podcasts, and with our ‘Spin – The Rally Pod’ series you can enjoy to the best of rallying current affairs and history on your phone, tablet, computer or even through your car."),
        
        ListElement(icon: Constants.IconNames.icon14, image: Constants.ImageNames.image14, title: "Les Explorateurs, le podcast (5/5) : François Gabart, le marin volant", text: "Podcast Les Explorateurs (5/5). Les Explorateurs, le podcast (5/5) : François Gabart, le marin volan. On connaît le navigateur triomphant, moins l'ingénieur de l'ombre. Détenteur du record du tour du monde à la voile en solitaire, François Gabart est aussi l'architecte de navires s'élevant au-dessus des eaux."),
        
        ListElement(icon: Constants.IconNames.icon16, image: Constants.ImageNames.image16, title: "Grand Prix de France : les courses de légende", text: "Dans notre podcast, revivez plus d’un siècle d’exploits et de tragédies survenus pendant le Grand Prix tricolore."),
        
    ];
    
    static let listVehicIndiv: [ListElement] = [
    
    
    ListElement(icon: Constants.IconNames.icon17, image: Constants.ImageNames.image17, title: "C'est qui en pole?", text: "Dans C'est qui en pole? nous devisons de façon décontractée de l'actualité du Continental Circus contemporain à savoir les championnats Moto3, Moto 2 et Moto GP sans toutefois oublier le WSBK, superstock, l'endurance entre autres. Des informations factuelles et des avis passionnés, le tout en français. Si cela vous tente rejoignez-nous et partagez vos avis! Générique : Road trip by Scott Holmes http://freemusicarchive.org/music/Scott_Holmes/"),
    
    ListElement(icon: Constants.IconNames.icon18, image: Constants.ImageNames.image18, title: "The PulpMX.com Show", text: "Motocross fans of the world connect to their sport every week on the groundbreaking PulpMX.com Show. Tune in Monday nights at 5PST/8EST for an entirely new way to get your bench racing fix.")
    ];
    
    
    static let listCoordinCollectif: [ListElement] = []
    static let listCoordinIndiv: [ListElement] = [];
    
    static let listAnimauxCollectif: [ListElement] = [];
    static let listAnimauxIndiv: [ListElement] = [];
    
    
}
