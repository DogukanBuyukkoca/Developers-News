//
//  Detail.swift
//  News App
//
//  Created by Doğukan BÜYÜKKOCA on 16.09.2023.
//

import SwiftUI

struct Detail: View {
    
    let url: String?
    
    var body: some View {
        WebView(urlString: url)
    }
}

struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(url: "https://www.google.com")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




