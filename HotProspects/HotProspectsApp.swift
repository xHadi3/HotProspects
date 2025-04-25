//
//  HotProspectsApp.swift
//  HotProspects
//
//  Created by Hadi Al zayer on 19/10/1446 AH.
//
import SwiftData
import SwiftUI

@main
struct HotProspectsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Prospect.self)
    }
}
