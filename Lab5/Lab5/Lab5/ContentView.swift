//
//  ContentView.swift
//  Lab5
//
//  Created by Ivan Chukharev on 11/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var waterIntakeGoal: Double = 8.0
    @State private var isReminderEnabled: Bool = false
    @State private var dailyIntake: Double = 0.0
    @State private var manualIntakeAdjustment: Double = 0.0

    var body: some View {
        TabView {
            
            VStack {
                ProgressView(value: dailyIntake + manualIntakeAdjustment, total: waterIntakeGoal)
                    .padding()

                Stepper("Adjust Intake:", value: $manualIntakeAdjustment, in: 0...waterIntakeGoal, step: 1.0)
                    .padding()

                Text("Daily Progress: \(Int(dailyIntake + manualIntakeAdjustment))/\(Int(waterIntakeGoal)) cups")
                    .padding()
            }
            .tabItem {
                Image(systemName: "chart.bar.fill")
                Text("Daily Progress")
            }

        
            VStack {
                Slider(value: $waterIntakeGoal, in: 1.0...15.0, step: 1.0)
                    .padding()

                Text("Set Your Daily Water Intake Goal: \(Int(waterIntakeGoal)) cups")
                    .padding()
                
                Toggle("Enable Reminder", isOn: $isReminderEnabled)
                    .padding()

                if isReminderEnabled {
                    Text("Reminder Details: \n\nDont foget your water!!! ")
                        .padding()
                }
            }
            .tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
        }
        
    }
}
