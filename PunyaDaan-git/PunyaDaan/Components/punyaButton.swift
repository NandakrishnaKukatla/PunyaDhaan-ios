//
//  punyaButton.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

// A reusable primary button style used across the Auth and Donator screens
struct punyaButton: View {
    var title: String
    var backgroundColor: Color = appColors.primaryRed
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
                .padding()
                .background(backgroundColor)
                .clipShape(Capsule())
        }
    }
}
