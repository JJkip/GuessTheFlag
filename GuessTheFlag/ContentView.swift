//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Joseph Langat on 21/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                LinearGradient(gradient: Gradient(stops: [
                        .init(color: .pink, location: 0.45),
                        .init(color: .indigo, location: 0.55),
                    ]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack(spacing: 20) {
                    RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
                    Text("100")
                    Text("2")
                    Text("3")
                    Spacer()
                }
                VStack(alignment: .leading) {
                    AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
                    Text("1")
                    Text("2")
                    Text("3")
                    Spacer()
                }
                ZStack {
                    VStack(spacing: 0) {
                        Color.red
                        Color.blue
                    }
                    Text("Content goes here")
                        .foregroundColor(.secondary)
                        .padding(30)
                        .background(.ultraThinMaterial)
                }
                ZStack{
                    Color.pink
                    Color.indigo
                        .frame(minWidth: 140, maxWidth: .infinity, maxHeight: 80)
                    Text("1")
                    Text("2")
                    Text("3")
                }
                HStack {
                    Text("1")
                    Text("2")
                    Text("3")
                }
                HStack {
                    Text("4")
                    Text("5")
                    Text("6")
                }
                HStack {
                    Text("7")
                    Text("8")
                    Text("9")
                }
            }
        }
        .navigationTitle("Stacks")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
