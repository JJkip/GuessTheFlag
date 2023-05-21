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
                VStack(spacing: 20) {
                    Text("1")
                    Text("2")
                    Text("3")
                    Spacer()
                }
                VStack(alignment: .leading) {
                    Text("1")
                    Text("2")
                    Text("3")
                    Spacer()
                }
                ZStack{
                    //Zstack is better used when we have  text on top of an image
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
