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
        VStack {
            Text("Awesome!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.goldBC)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.maroonBC)
//                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding()
            
            Spacer()
            
            HStack {
                Button("Awesome") {
                    messageString = "You Are Awesome!"
                }
                
                Spacer()
                
                Button("Great") {
                    messageString = "You Are Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            .padding()
            
            Rectangle()
                .frame(height: 0)
                .background(.maroonBC)
        }
    }
}

#Preview {
    ContentView()
}
