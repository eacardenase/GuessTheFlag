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
                stops: [
                    .init(color: .pink, location: 0.2),
                    .init(color: .purple, location: 0.6),
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )

            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
