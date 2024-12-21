//
//  SessionView.swift
//  Gain
//
//  Created by Bohdan Dmytruk on 21/12/2024.
//

import SwiftUI

struct SessionView: View {
    var body: some View {
        Text("Session Page!")
            .foregroundStyle(Color.primary)
            .font(Font.system(.headline, design: .monospaced))
        Text("Here you can create and start your session")
            .foregroundStyle(Color.secondary)
            .font(.subheadline)
        TimerView()
            .padding(.top)
    }
}
