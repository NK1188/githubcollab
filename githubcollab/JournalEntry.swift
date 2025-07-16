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
        NavigationStack {
            
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
                    
                    NavigationLink(destination: ReflectionPage()) {
                        Text("Navigate to Reflection Questions")
                            .font(.title2)
                            .fontWeight(.medium)
                            .foregroundColor(Color(hue: 0.743, saturation: 0.541, brightness: 0.962))
                            .padding()
                        }
                        
                    }
                    .bold()
                    .font(.title)
                    .fontWeight(.bold)
                }
                
                .padding()
                
            }
            
        }
        
    }
        
    func SaveEntry(entry: String) {
        var entries = UserDefaults.standard.stringArray(forKey: "entries") ?? []
        entries.append(entry)
        UserDefaults.standard.set(entries, forKey: "entries")
    
        
    }


#Preview {
    JournalEntry()
}
