//
//  GainApp.swift
//  Gain
//
//  Created by Bohdan Dmytruk on 21/12/2024.
//

import SwiftUI

@main
struct GainApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Tab("Session", systemImage: "ring.circle.fill") {
                    SessionView()
                }
                Tab("Progress", systemImage: "figure.run") {
                    ProgressView()
                }
            }
        }
    }
}
