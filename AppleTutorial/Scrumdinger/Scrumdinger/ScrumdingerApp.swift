//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by 남유성 on 3/10/24.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums: [DailyScrum] = DailyScrum.mockUp
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
