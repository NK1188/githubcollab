//
//  ContentView.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ContentView: View {
    //   @State private var  username: String = ""
    // @State private var password : String = ""
    //  @State private var isLoggedIn: Bool = false
    
    var body: some View {
        
        NavigationStack{
            VStack{
                Text("Sign In")
                    .padding()
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                //or wtv color edit that
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 4)
                
                
                Spacer()
                VStack{
                    VStack{
                        Text("USERNAME")
                        TextField("Enter your username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .border(Color.gray, width: 1)
                            .padding(10)
                    }
                    .padding(.bottom, 70)
                    .padding(.horizontal, 10)
                    
                    VStack{
                        Text("PASSWORD")
                        TextField("Enter your password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                            .multilineTextAlignment(.center)
                            .font(.title)
                            .border(Color.gray, width: 1)
                            .padding(10)
                    }
                    .padding(.horizontal, 10)
                }
                .background(Color(.systemGray6))
                .cornerRadius(12)
                .padding()
                .padding(.vertical, 50)
                .shadow(color: .gray.opacity(0.3), radius : 5, x: 0, y: 3)
                Spacer()
                // name it smth else later
                
                
                NavigationLink(destination: WelcomePage()) {
                    Text("Log In")
                }
                .font(.title2)
                .buttonStyle(.bordered)
                .tint(.gray)
                .padding(.bottom, 30)
                
                
                //.navigationTitle("SIGN IN")
                // .navigationBarTitleDisplayMode(.inline)
                //.navigationBarTitleDisplayMode(.large)
                // idk what this is
                
            }
            // .background(Color(.systemGray6))
            // above works for complete background so change that color later


            


        }
    }
}
#Preview {
        ContentView()
    }
    

