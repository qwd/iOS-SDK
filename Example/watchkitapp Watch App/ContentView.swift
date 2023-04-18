//
//  ContentView.swift
//  watchkitapp Watch App
//
//  Created by LESLIEHAN on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            QHelper.config()
            QHelper.WEATHER_NOW()
            QHelper.ASTRONOMY_SUN()
            QHelper.GEO_CITY_LOOKUP()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
