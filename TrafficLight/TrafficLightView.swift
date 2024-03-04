//
//  ContentView.swift
//  TrafficLight
//
//  Created by Варвара Уткина on 29.02.2024.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct TrafficLightView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.off
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack(spacing: 30) {
            ColorCircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            )
            ColorCircleView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3
            )
            ColorCircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )
        }
        .padding(.top, 20)
        
        Spacer()
        
        StartButtonView(title: buttonTitle) {
            if buttonTitle == "START" {
                buttonTitle = "NEXT"
            }
            nextColor()
        }
        .padding(.bottom, 20)
    }
    
    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}

#Preview {
    TrafficLightView()
}
