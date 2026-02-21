//
//  spalshView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct splashView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Image("logo")
                .resizable()
                .scaledToFill() // Fills entire frame
                .frame(maxWidth: .infinity)
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .clipped() // Prevent overflow
            
            Text("PunyaDaan")
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundStyle(.red)
            
            Text("Digital Bharat ka Digital Daanpatra")
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(UIColor.systemBackground))
    }
}

#Preview {
    splashView()
}
