//
//  sampleApp.swift
//  sample
//
//  Created by Nikhil Lihla on 29/05/21.
//

import SwiftUI

@main
struct sampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        }
    }
}
