//
//  ContentView.swift
//  TrafficLight
//
//  Created by Варвара Уткина on 29.02.2024.
//

import SwiftUI

struct TrafficLightView: View {
    @State private var buttonTitle = "START"
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    var body: some View {
        VStack(spacing: 30) {
            setupCircle(.red, redOpacity)
            setupCircle(.yellow, yellowOpacity)
            setupCircle(.green, greenOpacity)
        }
        .padding(.top, 20)
        
        Spacer()
        
        Button(action: buttonTapped) {
            Text(buttonTitle)
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
    
    private func buttonTapped() {
        buttonTitle = "NEXT"
        
        switch currentLight {
        case .red:
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
            currentLight = .yellow
        case .yellow:
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            currentLight = .green
        case .green:
            yellowOpacity = lightIsOff
            greenOpacity = lightIsOn
            currentLight = .red
        }
    }
    
    private func setupCircle(_ color: Color, _ opacity: Double) -> some View {
        return Circle()
            .frame(width: 125)
            .foregroundStyle(color.opacity(opacity))
            .shadow(radius: 10)
    }
}

private extension TrafficLightView {
    enum CurrentLight {
        case red, yellow, green
    }
}

#Preview {
    TrafficLightView()
}
