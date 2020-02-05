//
//  page2.swift
//  festivaPage
//
//  Created by saad  on 29/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI
import UIKit

struct Valider: View {
    
   
    
   @State var prenom: String = ""
   @State var tel: String = ""
    @State var nom: String = ""
      @State var mail: String = ""
        var body: some View {
            
            
    ZStack{
        
            
                Image("background2")
                    .resizable()
                    .foregroundColor(Color.purple)
                    .aspectRatio(contentMode: .fit)
                        
                    
            
            VStack (alignment: .leading, spacing: 20){

           
                // 1.
                Text("Participer")
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                Spacer()
                
                // 2.
                HStack {
                    Text("Nom:          ")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                TextField("entrer votre nom", text: $nom)
                    .border(Color.gray)                        .font(.body)
                    .background(Color.white)


                }
                HStack {
                    Text("Prénom:     ")
                        .font(.body).fontWeight(.bold)
                        .foregroundColor(Color.white)
                TextField("entrer votre prénom", text: $prenom)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                HStack {
                    Text("Téléphone:")
                        .font(.body).fontWeight(.bold)
                        .foregroundColor(Color.white)
                    TextField("votre numéro de téléphone", text: $tel)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                HStack {
                    Text("e-mail:       ")
                        .font(.body) .font(.body).fontWeight(.bold)
                                               .foregroundColor(Color.white)
                TextField("votre e-mail", text: $mail)
                    .border(Color.gray)                        .font(.body)                    .background(Color.white)


                }
                // 3.
            //    Text("\(name)")
                
                 // 3.
                Spacer()
                
                
                NavigationLink( destination: Page()) {
                    Button(action: {
                        // Change tel to Int
                        
                       // print(Int(self.tel) ?? "No value")
                        let person = Person(nom: self.nom, prenom: self.prenom, telephone: self.tel, mail: self.mail)
                        Person.allPersons.append(person)
                    }, label: {
                        Text(" Valider votre choix ")
                        .font(.title)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                        .offset(x: 60)
                    })
                                 
                }
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 10){
                    Text("Votre entrées sont:").font(.body).fontWeight(.bold).padding()                        .foregroundColor(Color.red)

                    Text("   prénom: \(prenom)  ")
                        .foregroundColor(Color.red).font(.body)
                    Text("   nom: \(nom)  ")                        .foregroundColor(Color.red).font(.body)

                    Text("   téléphone: \(tel)  ")                        .foregroundColor(Color.red).font(.body)

                    Text("   e-mail: \(mail)")                        .foregroundColor(Color.red).font(.body)

                    Text(" Oui, contactez-moi! ")
                    .font(.title)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                    .offset(x: 50)

                       }
            }
            .padding()
            .font(.title)
        }
    }
            
    }

struct Valider_Previews: PreviewProvider {
    static var previews: some View {
        Valider()
    }
}
