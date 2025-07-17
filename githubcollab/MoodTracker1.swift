//
//  MoodTracker1.swift
//  githubcollab
//
//  Created by Scholar on 7/17/25.
//

import SwiftUI

struct MoodCheckerView: View {
    @State private var selectedMood: String? = nil
    @State private var note: String = ""
    
    // the options for moods
    let moods: [String: String] = [
        "😊": "Happy",
        "😐": "Okay",
        "😢": "Sad",
        "😠": "Angry",
        "😌": "Calm"
    ]
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                // prompt text
                Text("How are you feeling today?")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.top)

                // mood selection code
                HStack(spacing: 15) {
                    ForEach(moods.keys.sorted(), id: \.self) { emoji in
                        Button(action: {
                            selectedMood = emoji
                        }) {
                            Text(emoji)
                                .font(.system(size: 40))
                                .padding()
                                .background(
                                    selectedMood == emoji ? Color.blue.opacity(0.3) : Color.gray.opacity(0.1)
                                )
                                .clipShape(Circle())
                        }
                    }
                }

                // optional question for the user to add a note
                TextField("Want to add a note about your day?", text: $note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal)

                // the button for submitting
                Button(action: handleSubmit) {
                    Text("Submit Mood")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(selectedMood == nil ? Color.gray : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .disabled(selectedMood == nil)
                .padding(.horizontal)

                Spacer()
            }
            .padding()
            .navigationTitle("Mood Checker")
        }
    }

    // the submit button logic
    func handleSubmit() {
        guard let mood = selectedMood else { return }
        
        // Print to console (can replace with save to database, etc.)
        print("Mood: \(mood) - \(moods[mood] ?? "")")
        print("Note: \(note)")
        
        // Optional: Show a success alert
        // Optional: Save to file/database
        
        // Reset state
        selectedMood = nil
        note = ""
    }
}

#Preview {
    MoodCheckerView()
}
