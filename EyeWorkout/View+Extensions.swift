//
//  View+ Extensions.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

extension View {
    func isHidden(_ isHidden: Bool) -> some View {
        ModifiedContent(
            content: self,
            modifier: HideModifier(isHidden: isHidden)
        )
    }
}
