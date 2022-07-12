//
//  ContentView.swift
//  WeSplit
//
//  Created by Decagon on 29/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["He", "She", "It"]
    @State private var selectedStudent = "Ha"
    
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                    Text("Hello, world!")
                   
                }
                Group {
                    Button("Tap count: \(tapCount)") {
                        tapCount += 1
                    }
                    TextField("Enter your name", text: $name)
                    Text("Your name is: \(name)")
                }
                Section {
                    ForEach(0..<2) {
                        number in Text("Row \(number + 1)")
                    }
                    //or
                    ForEach(0..<3) {
                        Text("Line \($0 + 1)")
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
