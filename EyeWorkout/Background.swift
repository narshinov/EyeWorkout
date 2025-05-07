//
//  Background.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 6.05.25.
//

import SwiftUI

struct Background: ViewModifier {
    func body(content: Content) -> some View {
        ZStack {
            Color.c1E3A5F
                .ignoresSafeArea()
            content
        }
    }
}

extension View {
    func baseBackground() -> some View {
        modifier(Background())
    }
}
