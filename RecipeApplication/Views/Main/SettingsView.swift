//
//  SettingsView.swift
//  RecipeApplication
//
//  Created by Montassar Ben Zammel on 23/4/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings")
        }
        .navigationViewStyle(.stack)

    }
}

#Preview {
    SettingsView()
}
