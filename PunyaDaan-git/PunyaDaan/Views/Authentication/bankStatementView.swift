//
//  bankStatementView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct bankStatementView: View {
    let transactions = mockTransactions
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            Text("Transaction History")
                .font(.system(size: 20, weight: .semibold))
                .padding(.horizontal)
                .foregroundStyle(.gray)
            
            List(transactions) { transaction in
                transactionRow(transaction: transaction)
            }
            .listStyle(.plain)
            .padding(.top, 8)
        }
    }
}

#Preview {
    bankStatementView()
}
