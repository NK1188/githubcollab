//
//  WelcomePage.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct WelcomePage: View {
    var body: some View {
        VStack{
            Text("Welcome Back!")
                .padding()
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            //or wtv color edit that
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 4)
        }
        .padding(.bottom, 50)
        .padding(.top, 50)
        VStack{
            Text("Contents")
            //idk what to call it so change the name later
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.top, 10)
            
            VStack{
                    Text("Mood Tracker + Daily log in")
            }
            .padding(20)
            
            VStack{
                    Text("Personal Journal")
               
            }
            .padding(20)
            
            VStack{
                    Text("General Journal")
            }
            .padding(20)
            
        }
        .padding(.bottom,200)
        .padding(.top, 100)
    }
}

#Preview {
    WelcomePage()
}
