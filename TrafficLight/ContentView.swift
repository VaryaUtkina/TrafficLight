//
//  ContentView.swift
//  TrafficLight
//
//  Created by Варвара Уткина on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30) {
            Color.red
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                .shadow(radius: 10)
            Color.yellow
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                .shadow(radius: 10)
            Color.green
                .frame(width: 125, height: 125)
                .clipShape(Circle())
                .shadow(radius: 10)
        }
        .padding(.top, 20)
        
        Spacer()
        
        Button(action: {} ) {
            Text("Start")
                .font(.largeTitle)
                .fontWeight(.semibold)
        }
        .frame(width: 150, height: 50)
        .background(.tint)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 15))
        .shadow(radius: 10)
        .padding(.bottom, 20)
    }
}

#Preview {
    ContentView()
}
