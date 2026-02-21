//
//  transactionRow.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct transactionRow: View {
    let transaction: Transaction
    
    var body: some View {
        HStack(alignment: .top) {
            // Left block (Time & Details)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(transaction.time) // e.g., "11:11 am" [cite: 90]
                        .font(.caption)
                        .foregroundStyle(.secondary)
                    Text("|")
                    Text(transaction.donorName) // e.g., "Manish Goel" [cite: 90]
                        .font(.subheadline)
                        .bold()
                }
                
                HStack {
                    Text("UTR: \(transaction.utr)") // e.g., "UTR: 12345678" [cite: 90]
                        .font(.caption2)
                        .foregroundStyle(.gray)
                    Text("|")
                        .font(.caption2)
                    Text(transaction.method) // e.g., "PunyaDaanQR" [cite: 90]
                        .font(.caption2)
                        .foregroundStyle(.gray)
                }
            }
            
            Spacer()
            
            // Right block (Amount)
            Text("₹\(transaction.amount)") // [cite: 94]
                .font(.headline)
                .foregroundStyle(.green)
        }
        .padding(.vertical, 4)
    }
}

// Quick action button used in DoneeStatementView
struct QuickActionButton: View {
    let title: String
    let icon: String
    
    var body: some View {
        Button(action: {}) {
            VStack(spacing: 8) {
                Image(systemName: icon)
                    .font(.title2)
                    .foregroundStyle(.orange)
                Text(title)
                    .font(.caption2)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: .black.opacity(0.1), radius: 2, x: 0, y: 1)
        }
    }
}
