//
//  BulletView.swift
//  EyeWorkout
//
//  Created by Никита Аршинов on 7.05.25.
//

import SwiftUI

struct BulletView: View {
    let index: Int
    let item: ExerciseType
    
    var body: some View {
        HStack(alignment: .top) {
            Text("\(index).")
                .font(.title)
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.title)
                Text(item.description)
            }
        }
    }
}

#Preview {
    BulletView(index: 2, item: .blinking)
}
