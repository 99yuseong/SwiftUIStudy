//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by 남유성 on 3/10/24.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
    
    @ViewBuilder
    func ThemeView(theme: Theme) -> some View {
        Text(theme.name)
            .padding(4)
            .frame(maxWidth: .infinity)
            .background(.yellow)
            .foregroundStyle(theme.accentColor)
            .clipShape(RoundedRectangle(cornerRadius: 4))
    }
}

#Preview {
    ThemePicker(selection: .constant(.bubblegum))
}
