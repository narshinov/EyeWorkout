//
//  WorkoutPlanViewModel.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

class WorkoutPlanViewModel: ObservableObject {
    @Published var workout: WorkoutType = .relaxation
    
    var workoutTitle: String {
        workout.title
    }
    
    var exercises: [ExerciseType] {
        workout.exercises
    }
    
    // MARK: - Intents
    
    func startWorkout() {
        
    }
}
