//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Joseph Langat on 21/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
            VStack {
                VStack {
                    Button("Show Alert") {
                        showAlert = true
                    }
                    .buttonStyle(.borderedProminent)
                    .alert("Important message", isPresented: $showAlert){
                        Button("Delete", role: .destructive){}
                        Button("Cancel", role: .cancel){}
                    } message: {
                        Text("Are you sure you want to delete?")
                    }
                    Spacer()
                }
                VStack {
                    Button("Button 1") {}
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive) {}
                        .buttonStyle(.bordered)
                    Button("Button 3") {}
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                    Button("Button 4", role: .destructive) {}
                        .buttonStyle(.borderedProminent)
                    Button {
                        print("Button was tapped")
                    } label: {
                        Label("Edit", systemImage: "pencil")
                            .foregroundColor(.white)
                            .padding()
                            .background(.red)
                    }
                }
                ZStack {
                    LinearGradient(gradient: Gradient(stops: [
                            .init(color: .pink, location: 0.45),
                            .init(color: .indigo, location: 0.55),
                        ]), startPoint: .top, endPoint: .bottom)
                    Text("Linear gradient")
                }
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
    func executeDelete() {
        print("Now deleting")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
