//
//  ReflectionPage.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct ReflectionPage: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.blue.opacity(0.1)
                VStack {
                    Text("Reflections Page")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.725, saturation: 0.363, brightness: 0.97))
                    Text("Answer the following questions to best understand your situation: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Text("______________________________________")
                    Text("How would you describe how you feel in 1 word: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What do you feel you need most right now: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("How do you typically manage your emotions: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What would the future you do about the situation: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What is something that makes you feel relaxed: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What part of YOU are you most prooud of: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What has caused your emotions to be the way they were: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    Text("What are you most grateful for: ")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    TextField("Click to Write", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)

                }
            }
                    .padding()
        }
    }
    
}

#Preview {
    ReflectionPage()
}
