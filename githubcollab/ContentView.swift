//
//  ContentView.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("change 1")
            
        }
        .padding()
        NavigationStack{
            VStack{
                Text("Log in page")
                // name it smth else later
                NavigationLink(destination: Text("You've arrived to the Second View 🎊")) {
                    Text("Log In")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
