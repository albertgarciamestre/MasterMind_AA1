//
//  MasterMindApp.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

@main
struct MasterMindApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: ViewModel())
        }
    }
}
