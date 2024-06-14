//
//  ContentView.swift
//  InteractiveApp
//
//  Created by Scholar on 6/7/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State private var name = ""
    //Add another state property called textTitle that stores the string "What is your name?"
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Spacer()
            Text(textTitle)
            // changed string from "what is your name?" to string interpolation of textTitle
                .font(.title)
            TextField("Type Here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.cyan, width: 2.5)
            //.padding()
            Spacer()
            Button("Submit Name") {
               // print(name)
            textTitle = "Welcome \(name)!"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.red)
        }
        .padding()
        .padding()
    }
}

#Preview {
    ContentView()
}
