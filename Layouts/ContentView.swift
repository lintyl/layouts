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
            Text("You Have Skills!")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.goldBC)
                .padding()
                .background(.maroonBC)
                .clipShape(RoundedRectangle(cornerRadius: 15))
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
            //                .border(.red, width: 2)
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
            //            .border(.purple, width: 5)
            .padding()
        }
        .background(
            Gradient(colors: [.yellow, .orange])
        )
    }
}

#Preview {
    ContentView()
}
