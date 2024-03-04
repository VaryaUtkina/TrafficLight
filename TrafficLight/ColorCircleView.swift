//
//  ColorCircleView.swift
//  TrafficLight
//
//  Created by Варвара Уткина on 04.03.2024.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 125)
            .foregroundStyle(color.opacity(opacity))
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1)
}
