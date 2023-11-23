//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Venkata Tarun Kumar Mavillapalli on 23/11/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}

//This Swift code defines the main entry point for a SwiftUI-based Calculator app. It creates an instance of CalculatorVie and associates it with the CalculatorApp's main window group while providing an environment object of the CalculatorView.ViewModel to manage the app's data and behavior.
