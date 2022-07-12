//
//  ContentView.swift
//  WeSplit
//
//  Created by Decagon on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                Group {
                    Button("Tap count: \(tapCount)") {
                        tapCount += 1
                    }
                }
    //            Text("Hello, world!")
    //            Text("Hello, world!")
    //            Text("Hello, world!")
    //            Text("Hello, world!")
    //            Text("Hello, world!")
            }
            .navigationTitle("SwiftUI")
// for a small display           .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
