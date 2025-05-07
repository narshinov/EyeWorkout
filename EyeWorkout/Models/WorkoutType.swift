//
//  WorkoutModel.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 6.05.25.
//

import Foundation

enum WorkoutType: CaseIterable {
    case quick
    case strengthening
    case relaxation
    
    var title: String {
        switch self {
        case .quick:
            "Quick Warm-Up"
        case .strengthening:
            "Strengthening Complex"
        case .relaxation:
            "Relaxation Sequence"
        }
    }
    
    var description: String {
        switch self {
        case .quick:
            "Relaxation, blinking, and gentle eye movements to prepare muscles. (3–5 min)"
        case .strengthening:
            "Focus training, figure-eight patterns, and resistance exercises. (7–10 min)"
        case .relaxation:
            "Calming techniques, palming, and massage to reduce fatigue. (3–5 min)"
        }
    }
    
    var exercises: [ExerciseType] {
        switch self {
        case .quick: [.palming, .blinking, .sideToSide, .upAndDown, .circularMotions]
        case .strengthening: [.nearFarFocus, .eyeDrawing, .diagonals, .squeezing, .eyelidMassage]
        case .relaxation: [.warmPalms, .slowBlinking, .darkGaze, .eyebrowMassage]
        }
    }
}

struct Workout: Identifiable {
    let id: String
    let type: WorkoutType
}
