//
//  thankyoupage.swift
//  githubcollab
//
//  Created by Srilakshmi Pyneni on 7/16/25.
//

import SwiftUI

struct thankyoupage: View {
    @State private var Entry = ""
    
    var body: some View {
        ZStack {
            
            Color.purple.opacity(0.1)

            
            VStack {
                Spacer()
                Text("Thank you for showing up for yourself!")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(hue: 0.625, saturation: 0.318, brightness: 0.977))
                
                Spacer()
                
               
                Button("Next Page"){
                    
                }
                
                .bold()
                .font(.title)
                .fontWeight(.bold)
            }
            
            .padding()
            
        }
        
    }
        
    
    
    
    }

#Preview {
    thankyoupage()
}
