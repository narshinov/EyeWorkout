//
//  ContentView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 6.05.25.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        workouts
            .padding()
            .baseBackground()
    }
    
    var workouts: some View {
        VStack {
            ForEach(viewModel.workouts) { workout in
                WorkoutView(workout: workout)
                    .onTapGesture {
                        viewModel.choose(workout: workout)
                    }
            }
        }
    }
}

#Preview {
    MainView(viewModel: MainViewModel())
}
