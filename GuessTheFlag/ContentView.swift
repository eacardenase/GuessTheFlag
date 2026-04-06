//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Edwin Cardenas on 4/4/26.
//

import SwiftUI

struct ContentView: View {
    var countries = [
        "Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria",
        "Poland", "Spain", "UK", "Ukraine", "US",
    ]
    var correctAnswer = Int.random(in: 0..<3)

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()

            VStack(spacing: 30) {
                VStack {
                    Text("Tag the flag of")

                    Text(countries[correctAnswer])
                        .italic()
                }
                .font(.largeTitle)
                .foregroundStyle(.white)

                ForEach(0..<3) { number in
                    let flagName = countries[number]

                    Button {
                        print(flagName)
                    } label: {
                        Image(flagName)
                            .border(.black)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
