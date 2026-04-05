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
            AngularGradient(
                colors: [.pink, .purple, .blue, .cyan, .teal, .red],
                center: .center
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
