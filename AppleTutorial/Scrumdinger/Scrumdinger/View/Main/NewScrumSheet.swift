//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by 남유성 on 3/13/24.
//

import SwiftUI

struct NewScrumSheet: View {
    @State private var newScrum = DailyScrum.empty
    @Binding var scrums: [DailyScrum]
    @Binding var isPresentingNewScrumView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $newScrum)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingNewScrumView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            print(scrums.count)
                            scrums.append(newScrum)
                            print(scrums.count)
                            isPresentingNewScrumView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    NewScrumSheet(
        scrums: .constant(DailyScrum.mockUp),
        isPresentingNewScrumView: .constant(true)
    )
}
