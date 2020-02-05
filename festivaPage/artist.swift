//
//  artistes.swift
//  festivaPage
//
//  Created by saad  on 03/02/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import Foundation

struct artist: Identifiable{
    
    var id = UUID()
    var imageName: String
    
    static let Artist = [
        artist(imageName: "JOSHUA REDMAN"), artist(imageName: "STEFANO BOLLANI"), artist(imageName: "veronica_swift"), artist(imageName: "WYNTON MARSALIS")
    ]
}
