//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Edwin Cardenas on 4/4/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Cancel", role: .cancel) {}

            Button("Delete", role: .destructive) {}

            Button("Button 1") {}
                .buttonStyle(.bordered)

            Button("Button 2", role: .destructive) {}
                .buttonStyle(.bordered)

            Button("Button 3") {}
                .buttonStyle(.borderedProminent)

            Button("Button 4", role: .destructive) {}
                .buttonStyle(.borderedProminent)

            Button("Button 5") {}
                .buttonStyle(.bordered)
                .tint(.purple)

            Button("Button 6") {}
                .buttonStyle(.borderedProminent)
                .tint(.purple)

            Button {
            } label: {
                Text("Button 7")
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .foregroundStyle(.white)
                    .background(.pink)
                    .clipShape(.buttonBorder)
            }

            Button("", systemImage: "pencil") {}

            Button {

            } label: {
                Image(systemName: "pencil")
            }

            Button("Edit", systemImage: "pencil") {}
                .buttonStyle(.bordered)

            Button("Edit", systemImage: "pencil") {}
                .buttonStyle(.borderedProminent)
                .tint(.purple)

            Button {

            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding(.horizontal, 11)
                    .padding(.vertical, 7)
                    .foregroundStyle(.white)
                    .background(.purple)
                    .clipShape(.buttonBorder)
            }
        }
    }
}

#Preview {
    ContentView()
}
