//
//  categoryIcon.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

// Reusable circular icon component used in DonatorHomeView
struct categoryIcon: View {
    let category: donationCategory
    
    var body: some View {
        VStack {
            Circle()
                .fill(appColors.primaryOrange.opacity(0.2))
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: category.iconName)
                        .foregroundStyle(appColors.primaryOrange)
                        .font(.title2)
                )
            
            Text(category.title)
                .font(.caption)
                .foregroundStyle(appColors.textPrimary)
        }
    }
}
