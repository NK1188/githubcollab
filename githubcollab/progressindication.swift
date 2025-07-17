//
//  progressindication.swift
//  githubcollab
//
//  Created by Srilakshmi Pyneni on 7/16/25.
//

import SwiftUI

struct progressindication: View {
    @State private var Entry = ""
    
    var body: some View {
        ZStack {
            
            Color.yellow.opacity(0.1)
            
            
            VStack {
                Text("Progress Indication")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.625, saturation: 0.318, brightness: 0.977))
                
                Spacer()
                Text("Day 1 of your reflection journey🌱 ")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.625, saturation: 0.318, brightness: 0.977))
                
                Spacer()
                
                
                Button("Log Out"){
                    
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
    progressindication()
}

