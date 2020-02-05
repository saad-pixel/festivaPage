//
//  ContentView.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
        
//NavigationView{
            
    VStack{
    
            
            TabView {
                
                Text("Bienvenu!")
                .tabItem {
                    
                        
                        Image(systemName: "house.fill")
                        Text("Actualité")
                }
                
                Text("map")
                    .tabItem {
                        
                        Image(systemName: "map")
                        Text("Map")
                }
                    GoFestView(fest: Fest(icon: "Ed-Sheeran", name: "Variété pop internationale", lieu: "Paris", image: "ed-sheeran-concert", comment: "La megastar mondiale Ed Sheeran annonce aujourd'hui une série de concerts et de festivals en 2019, qui fera suite à sa tournée des stades en Afrique du Sud en mars 2019 (qui affiche déjà complet)"))
                    .tabItem {
                        
                        Image(systemName: "person")
                           
                        Text("Profil")
                }
                
               
            }
             .navigationBarTitle(Text("Instagram"), displayMode: .inline).navigationBarItems(
                leading: Image(systemName:"camera"),
             trailing: Image(systemName:"paperplane") )
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

    
