//
//  MainViewModel.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 6.05.25.
//

import SwiftUI

class MainViewModel: ObservableObject {
    @Published var workouts: [Workout] = makeWorkouts()
        
    static func makeWorkouts() -> [Workout] {
        WorkoutType.allCases.compactMap {
            Workout(id: $0.title , type: $0)
        }
    }
    
    // MARK: - Intents
    
    func choose(workout: Workout) {
        print(workout.type.title)
    }
}
