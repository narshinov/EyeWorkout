//
//  ExerciseType.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import Foundation

enum ExerciseType {
    case palming
    case blinking
    case sideToSide
    case upAndDown
    case circularMotions
    case nearFarFocus
    case eyeDrawing
    case diagonals
    case squeezing
    case eyelidMassage
    case warmPalms
    case slowBlinking
    case darkGaze
    case eyebrowMassage
    
    var title: String {
        switch self {
        case .palming:
            "Palming (Relaxation)"
        case .blinking:
            "Blinking"
        case .sideToSide:
            "Side-to-Side Movements"
        case .upAndDown:
            "Up and Down"
        case .circularMotions:
            "Circular Motions"
        case .nearFarFocus:
            "Near-Far Focus"
        case .eyeDrawing:
            "Eye Drawing"
        case .diagonals:
            "Diagonals"
        case .squeezing:
            "Squeezing"
        case .eyelidMassage:
            "Eyelid Massage"
        case .warmPalms:
            "Warm Palms"
        case .slowBlinking:
            "Slow Blinking"
        case .darkGaze:
            "Dark Gaze"
        case .eyebrowMassage:
            "Eyebrow Massage"
        }
    }
    
    var description: String {
        switch self {
        case .palming:
            "Close your eyes and cover them gently with your palms (without pressure) for 20–30 seconds. Breathe deeply."
        case .blinking:
            "Blink rapidly 20–30 times, then close your eyes for 5 seconds. Repeat 2–3 times."
        case .sideToSide:
            "Without turning your head, look left, then right (5–7 times)."
        case .upAndDown:
            "Shift your gaze up and down (5–7 times)."
        case .circularMotions:
            "Slowly roll your eyes clockwise and counterclockwise (3–4 circles each way)."
        case .nearFarFocus:
            "Look at your finger (30 cm away), then into the distance (hold each position for 3–5 seconds, repeat 5–7 times)."
        case .eyeDrawing:
            "Draw a horizontal figure-eight (∞) with your eyes (5 times)."
        case .diagonals:
            "Move your gaze from the upper left to the lower right and vice versa (5–7 times)."
        case .squeezing:
            "Tightly shut your eyes for 3–5 seconds, then open them wide (3–5 times)."
        case .eyelidMassage:
            "Gently massage your eyelids in circular motions (10 seconds)."
        case .warmPalms:
            "Rub your hands together and place them over your closed eyes for 30 seconds."
        case .slowBlinking:
            "Close your eyes for 2–3 seconds, then open them (10 times)."
        case .darkGaze:
            "Close your eyes and visualize a dark space for 1–2 minutes."
        case .eyebrowMassage:
            "Gently stroke your eyebrows from the bridge of your nose to the temples."
        }
    }
}
