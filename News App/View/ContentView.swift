//
//  ContentView.swift
//  News App
//
//  Created by Doğukan BÜYÜKKOCA on 16.09.2023.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var networkmanager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkmanager.posts) { Currentpost in
                NavigationLink(destination: Detail(url: Currentpost.url)) {
                    HStack {
                            Text(String(Currentpost.points))
                            Text(Currentpost.title)
                    }
                }
                
            }
                .navigationTitle("H4XOR NEWS")
        }
        .onAppear() {
            networkmanager.fetchData()
        }
    }
}


