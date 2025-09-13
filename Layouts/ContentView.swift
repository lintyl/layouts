//
//  ContentView.swift
//  Layouts
//
//  Created by Tyler Lin on 9/12/25.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    
    var body: some View {
        
        Spacer()
        
        VStack {
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .border(.red, width: 2)
                .padding()
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                Button("Great") {
                    messageString = "You Are Great!"
                }
                
            }
            .buttonStyle(.borderedProminent)
            
        }
        
        Spacer()
    }
}

#Preview {
    ContentView()
}
