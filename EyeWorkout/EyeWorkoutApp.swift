//
//  EyeWorkoutApp.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 6.05.25.
//

import SwiftUI

@main
struct EyeWorkoutApp: App {
    @StateObject private var mainViewModel = MainViewModel()
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: mainViewModel)
        }
    }
}
