//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by 남유성 on 3/10/24.
//

import SwiftUI

struct DetailEditView: View {
    @State private var scrum = DailyScrum.empty
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section("Meeting Info") {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    Spacer(minLength: 20)
                    Text("\(scrum.lengthInMinutes) minutes")
                }
            }
            
            Section("Attendees") {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button {
                        scrum.attendees.append(DailyScrum.Attendee(name: newAttendeeName))
                        newAttendeeName = ""
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
