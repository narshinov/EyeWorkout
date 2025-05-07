//
//  HideModifier.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

struct HideModifier: ViewModifier {
    let isHidden: Bool
//    @ViewBuilder
    func body(content: Content) -> some View {
        if isHidden {
            EmptyView()
        } else {
            content
        }
    }
}
