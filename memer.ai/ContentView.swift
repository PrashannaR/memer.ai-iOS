//
//  ContentView.swift
//  memer.ai
//
//  Created by Prashanna Rajbhandari on 25/04/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("grayBGColor")
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("This is memer.ai")
                    .foregroundColor(.white)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
