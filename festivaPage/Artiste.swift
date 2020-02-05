//
//  ListArtiste.swift
//  festivaPage
//
//  Created by saad  on 03/02/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import Foundation

struct Artist : Identifiable {
    
    var id = UUID()
    var imageName : String
    var name: String
    
    
    
    
    
    static let artists =  [Artist(imageName: "veronica_swift", name: "Veronica Swift"), Artist(imageName: "WYNTON MARSALIS", name: "Wynton Marsalis"), Artist(imageName: "STEFANO BOLLANI", name: "Stefano Bollani"), Artist(imageName: "JOSHUA REDMAN", name: "Joshua Redman")]
    
}


