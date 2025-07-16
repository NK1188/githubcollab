//
//  SavedEntries.swift
//  githubcollab
//
//  Created by Scholar on 7/16/25.
//

import SwiftUI

struct SavedEntries: View {
    let entries = UserDefaults.standard.stringArray(forKey: "entries") ?? []
    var body: some View {
        List(entries, id: \.self) {
            entry in Text(entry)
                .font(.headline)
                .fontWeight(.bold)
        }
    
    }
}

#Preview {
    SavedEntries()
}
