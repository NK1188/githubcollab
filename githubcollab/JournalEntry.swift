//
//  JournalEntry.swift
//  githubcollab
//
//  Created by Scholar on 7/15/25.
//

import SwiftUI

struct JournalEntry: View {
    @State private var Entry = ""
    
    var body: some View {
        ZStack {
            
            Color.pink.opacity(0.1)

            
            VStack {
                Text("Personal Journal Entry")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                    .foregroundColor(Color(hue: 0.625, saturation: 0.318, brightness: 0.977))
                    .multilineTextAlignment(.center)
                TextField("Click to Write", text: $Entry)
                    .bold()
                    .padding()
                    .textFieldStyle(.roundedBorder)
                Button("Save Entry") {
                    SaveEntry(entry: Entry)
                    
                }
                .bold()
                .font(.title)
                .fontWeight(.bold)
            }
            
            .padding()
            
        }
        
    }
        
    func SaveEntry(entry: String) {
        var AllEntries = UserDefaults.standard.stringArray(forKey: "AllEntries") ?? []
        AllEntries.append(entry)
    
    
    }
}

#Preview {
    JournalEntry()
}
