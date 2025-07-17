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
            HStack{
                Image(systemName: "face.smiling")
                    .resizable()
                    .frame(width:25, height:25)
                    .foregroundColor(.gray)
                    .padding()
                Text("Hello, Navya!")
                    .font(.headline)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text("Welcome Back!")
                .padding(12)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.gray)
            //or wtv color edit that
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 4)
            Text("Progress over perfection.")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
             
        }
        .padding(.bottom)
       //.padding(.top)
        
       //contents box
        VStack{
            Text("Contents")
            //idk what to call it so change the name later
                .font(.headline)
                .foregroundColor(.white)
               // .padding(.top, 10)
            
            VStack{
                    Text(" 🌿 Mood Tracker + Daily Log")
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.2), radius : 3, x: 0, y: 2)
            
            VStack{
                NavigationLink(destination: JournalEntry()) {
                    Text(" 🪷 My Journal")
                }
                  
            }
            .padding(20)
            //.frame(maxWidth :.infinity, alignment: .leading)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.2), radius : 3, x: 0, y: 2)
            
            VStack{
                NavigationLink(destination: ReflectionPage()) {
                    Text(" 📝 General Reflections")
                }
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.2), radius : 3, x: 0, y: 2)
            
            VStack{
                NavigationLink(destination: SavedEntries()) {
                    Text(" 🔖 Saved Entries")
                }
            }
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .gray.opacity(0.2), radius : 3, x: 0, y: 2)
        }
        .padding(.bottom,30)
        .padding(.top, 30)
        .padding(.horizontal, 20)
        .foregroundColor(.gray)
        //changes the font color? above
        .background(Color.gray)
        .cornerRadius(20)
    }
}

#Preview {
    WelcomePage()
}
