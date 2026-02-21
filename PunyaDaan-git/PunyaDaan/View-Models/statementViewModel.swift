//
//  statementViewModel.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import Foundation
import Observation

@Observable
class statementViewModel {
    var transactions: [Transaction] = []
    var dateRange: Date = Date()
    
    // Dynamically calculate the total based on the filtered list
    var totalDonationToday: Int {
        transactions.reduce(0) { $0 + $1.amount }
    }
    
    init() {
        self.transactions = mockTransactions
    }
    
    func filterTransactions(by date: Date) {
        // TODO: Add logic to filter the transactions array based on selected Date Range
        self.dateRange = date
    }
}
