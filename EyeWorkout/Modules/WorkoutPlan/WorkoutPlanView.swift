//
//  WorkoutPlanView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

struct WorkoutPlanView: View {
    @ObservedObject var viewModel: WorkoutPlanViewModel
    
    var body: some View {
        VStack(spacing: 32) {
            Text(viewModel.workoutTitle)
                .font(.largeTitle)
            exercises
            Spacer()
            startWorkout
        }
        .foregroundStyle(.сF5F5DC)
        .padding()
        .baseBackground()
    }
    
    private var exercises: some View {
        VStack(alignment: .leading, spacing: 16) {
            ForEach(viewModel.exercises.indices, id: \.self) { index in
                BulletView(
                    index: Int(index) + 1,
                    item: viewModel.exercises[index]
                )
            }
        }
    }
    
    private var startWorkout: some View {
        Button("Start workout") {
            viewModel.startWorkout()
        }
        .font(.largeTitle)
        .buttonStyle(.bordered)
    }
}

#Preview {
    WorkoutPlanView(viewModel: WorkoutPlanViewModel())
}
