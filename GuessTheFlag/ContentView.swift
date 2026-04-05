//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Edwin Cardenas on 4/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.pink, .purple],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()

            VStack(spacing: 10) {
                HStack(spacing: 20) {
                    Text("1")
                    Text("2")
                    Text("3")
                }

                HStack(spacing: 20) {
                    Text("4")
                    Text("5")
                    Text("6")
                }

                HStack(spacing: 20) {
                    Text("7")
                    Text("8")
                    Text("9")
                }
                .fontWeight(.light)
            }
            .foregroundStyle(.white)
            .font(.system(size: 70, weight: .ultraLight))
        }
    }
}

#Preview {
    ContentView()
}
