//
//  TimerView.swift
//  Gain
//
//  Created by Bohdan Dmytruk on 21/12/2024.
//

import SwiftUI

struct TimerView: View {
    @State var isTimerRunning = false
    @State private var startTime =  Date()
    @State private var timerString = "0.00"
    @State private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {

        Text(self.timerString)
            .font(Font.system(.largeTitle, design: .monospaced))
            .onReceive(timer) { _ in
                if self.isTimerRunning {
                    timerString = String(format: "%.2f", (Date().timeIntervalSince( self.startTime)))
                }
            }
            .onTapGesture {
                if isTimerRunning {
                    self.stopTimer()
                } else {
                    timerString = "0.00"
                    startTime = Date()
                    self.startTimer()
                }
                isTimerRunning.toggle()
            }
            .onAppear() {
                self.stopTimer()
            }
    }
    
    func stopTimer() {
        self.timer.upstream.connect().cancel()
    }
    
    func startTimer() {
        self.timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    }
}
