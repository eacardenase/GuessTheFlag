//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Edwin Cardenas on 4/4/26.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var score = 0
    @State private var correctAnswer = Int.random(in: 0..<3)
    @State private var countries = [
        "Estonia", "France", "Germany", "Ireland", "Italy", "Monaco", "Nigeria",
        "Poland", "Spain", "UK", "Ukraine", "US",
    ].shuffled()

    var body: some View {
        ZStack {
            RadialGradient(
                colors: [.blue, .white],
                center: .center,
                startRadius: 100,
                endRadius: 600
            )
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
                    Button {
                        flagTapped(number)
                    } label: {
                        Image(countries[number])
                            .border(.black)
                    }
                    .alert(scoreTitle, isPresented: $showingScore) {
                        Button("Play again!", action: askQuestion)
                    } message: {
                        Text("Your score is \(score)")
                    }
                }
            }
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
            score = 0
        }

        showingScore = true
    }

    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0..<3)
    }
}

#Preview {
    ContentView()
}
