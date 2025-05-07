//
//  ExerciseView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI



struct ExerciseView: View {
    @State private var time = 30
    @State private var isCompressed = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        circle
            .baseBackground()
            .task { await runAnimation() }
            .onReceive(timer) { _ in runTimer() }
    }
}

extension ExerciseView {
    private var circle: some View {
        Circle()
            .stroke(lineWidth: 8)
            .scaleEffect(isCompressed ? 1.0 : 0.3)
            .shadow(color: .cA2E4B8, radius: isCompressed ? 30 : 15)
            .animation(.easeInOut(duration: 3), value: isCompressed)
            .overlay(content: text)
            .foregroundStyle(.сF5F5DC)
            .padding()
    }
    
    
    private func text() -> some View {
        Text(time, format: .number)
            .font(.largeTitle)
            .shadow(color: .cA2E4B8, radius: 30)
    }
    
    private func runAnimation() async {
        while time > 0 {
            isCompressed.toggle()
            try? await Task.sleep(for: .seconds(3))
        }
    }
    
    private func runTimer() {
        if time > 0 {
            time -= 1
        } else {
            timer.upstream.connect().cancel()
        }
    }
}

#Preview {
    ExerciseView()
}
