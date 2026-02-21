//
//  homeViewModel.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import Foundation
import Observation

@Observable
class homeViewModel {
    // Injecting the categories extracted from the UI
    var categories: [donationCategory] = [
        donationCategory(title: "KanyaDaan", iconName: "hands.sparkles.fill"),
        donationCategory(title: "Religious Places", iconName: "building.columns.fill"),
        donationCategory(title: "Charity", iconName: "heart.fill"),
        donationCategory(title: "Gaushala", iconName: "leaf.fill"),
        donationCategory(title: "YogDaan", iconName: "figure.mind.and.body")
    ]
    
    // Mock list for "Recent PunyaDaans"
    var recentDonations: [Transaction] = mockTransactions
    
    func fetchNearbyPlaces() {
        // TODO: Implement CoreLocation or API call to fetch nearby temples/gaushalas
    }
}
