//
//  WorkoutView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

struct WorkoutView: View {
    let workout: Workout
    var body: some View {
        VStack(alignment: .leading) {
            Text(workout.type.title)
                .font(.largeTitle).bold()
            Text(workout.type.description)
        }
        .foregroundStyle(Color.с333333)
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(Color.сF5F5DC)
        }
        
    }
}

#Preview {
    VStack {
        WorkoutView(workout: .init(id: "", type: .relaxation))
        WorkoutView(workout: .init(id: "", type: .quick))
        WorkoutView(workout: .init(id: "", type: .strengthening))
    }
    
}
