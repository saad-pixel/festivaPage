//
//  tabTp.swift
//  festivaPage
//
//  Created by saad  on 31/01/2020.
//  Copyright © 2020 saad. All rights reserved.
//

import SwiftUI

struct tabTp: View {
        var body: some View {
            TabView {
                Text("First View")
                    .tabItem {
                        Image(systemName: "1.circle")
                        Text("First")
                    }.tag(0)
                Text("Second View")
                    .tabItem {
                        Image(systemName: "2.circle")
                        Text("Second")
                    }.tag(1)
            }
            .padding()
            .listRowBackground(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
            .alignmentGuide(/*@START_MENU_TOKEN@*/ /*@PLACEHOLDER=Guide@*/.leading/*@END_MENU_TOKEN@*/) { dimension in
                100
            }
        }
    }

struct tabTp_Previews: PreviewProvider {
    static var previews: some View {
        tabTp()
    }
}
