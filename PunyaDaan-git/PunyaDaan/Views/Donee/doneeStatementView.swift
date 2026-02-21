//
//  doneeStatementView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct doneeStatementView: View {
    // Injecting mock transactions from Models/Transaction.swift
    let transactions = mockTransactions
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // MARK: - Header
                HStack {
                    Text("Devi Mandir Panipat") // [cite: 82]
                        .font(.title3)
                        .bold()
                    Spacer()
                    Button("HELP ?") {} // [cite: 85, 86]
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
                .padding()
                .background(Color.orange.opacity(0.1))
                
                // MARK: - Date Filter & Total
                VStack(spacing: 10) {
                    HStack {
                        Text("Date Range") // [cite: 84]
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                        Spacer()
                        Image(systemName: "calendar")
                    }
                    .padding(.horizontal)
                    
                    Text("1st Jan 2026, Today's Donation") // [cite: 88]
                        .font(.subheadline)
                    
                    Text("₹1111") // [cite: 89]
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(.orange)
                    
                    Text("View Today's Total Donation") // [cite: 93]
                        .font(.caption)
                        .foregroundStyle(.blue)
                }
                .padding(.vertical)
                
                // MARK: - Transaction List
                List(transactions) { transaction in
                    transactionRow(transaction: transaction)
                }
                .listStyle(.plain)
                
                // MARK: - Quick Actions (Bottom Grid)
                HStack(spacing: 15) {
                    QuickActionButton(title: "Check\nPunyaDaan\nAccount", icon: "doc.text.magnifyingglass") // [cite: 98]
                    QuickActionButton(title: "Completing\nMy KYC", icon: "person.text.rectangle") // [cite: 99]
                    QuickActionButton(title: "Managing\nMy Profile", icon: "person.crop.circle") // [cite: 100]
                }
                .padding()
                .background(Color.gray.opacity(0.1))
            }
            .navigationBarHidden(true)
        }
    }
}
