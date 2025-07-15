//
//  ContentView.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack{
                Text("Log in page")
                // name it smth else later
                NavigationLink(destination: Text("You've arrived to the welcome page 🎊")) {
                    Text("Log In")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
