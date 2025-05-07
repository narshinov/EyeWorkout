//
//  BlinkingExerciseView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

struct ExerciseCircle {
    let timeInterval: TimeInterval
    let exerciseTime: Int
    let pauseTime: Int
}

struct BlinkingExerciseView: View {
    let blinkTimer = Timer.publish(every: 0.25, on: .main, in: .common).autoconnect()
    let relaxTimer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var blinkTime = 30
    @State var relaxTime = 5
    
    @State var isScaled = false
    @State var isPause = false
    @State var isFinish = false
    
    @State var cyclesCount = 0
    
    var body: some View {
        VStack {
            Text("Close your eyes and relax")
                .font(.largeTitle)
                .isHidden(!isPause)
            circle
        }
            .foregroundStyle(.сF5F5DC)
            .padding()
            .baseBackground()
            .onReceive(isPause ? relaxTimer : blinkTimer) { _ in
                if !isFinish {
                    isPause ? runRelaxTimer() : runBlinkTimer()
                }
            }
    }
    
    private var circle: some View {
        Circle()
            .stroke(lineWidth: 8)
            .scaleEffect(isScaled ? 0.3 : 1.0)
            .animation(.easeInOut, value: isScaled)
            .overlay {
                Text(isPause ? relaxTime : blinkTime, format: .number)
                    .font(.largeTitle)
            }
    }
    
    private func runRelaxTimer() {
        if relaxTime > 0 {
            relaxTime -= 1
        } else {
            cyclesCount += 1
            relaxTimer.upstream.connect().cancel()
            if cyclesCount > 2 {
                isFinish = true
            }
            isPause = false
            blinkTime = 30
        }
    }
    
    private func runBlinkTimer() {
        if blinkTime > 0 {
            isScaled.toggle()
            blinkTime -= 1
        } else {
            relaxTime = 5
            isPause = true
            isScaled = true
            blinkTimer.upstream.connect().cancel()
        }
    }
}

#Preview {
    BlinkingExerciseView()
}
