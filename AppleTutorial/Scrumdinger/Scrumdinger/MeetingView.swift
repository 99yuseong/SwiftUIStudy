//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 남유성 on 3/10/24.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack {
            ProgressView(value: 5, total: 15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            
            Circle()
                .strokeBorder(lineWidth: 24)
            
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "forward.fill")
                }
            }
        }
        .background(.red)
        .padding()
        .background(.yellow, ignoresSafeAreaEdges: [])
    }
}

#Preview {
    MeetingView()
}
