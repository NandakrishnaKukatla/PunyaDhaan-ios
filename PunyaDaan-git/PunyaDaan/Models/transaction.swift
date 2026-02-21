//
//  transaction.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import Foundation

struct Transaction: Identifiable {
    let id = UUID()
    let time: String
    let donorName: String
    let utr: String
    let method: String
    let amount: Int
}


let mockTransactions = [
    Transaction(time: "11:11 am", donorName: "Manish Goel", utr: "12345678", method: "PunyaDaanQR", amount: 1111),
    Transaction(time: "11:21 am", donorName: "Mayank Garg", utr: "23456789", method: "PunyaDaan Wallet", amount: 500),
    Transaction(time: "01:21 pm", donorName: "Sachin Aggarwal", utr: "22345678", method: "PunyaDaan Click & Pay", amount: 2100),
    Transaction(time: "11:11 am", donorName: "Manish Goel", utr: "12345678", method: "PunyaDaanQR", amount: 1111),
    Transaction(time: "11:21 am", donorName: "Mayank Garg", utr: "23456789", method: "PunyaDaan Wallet", amount: 500),
    Transaction(time: "01:21 pm", donorName: "Sachin Aggarwal", utr: "22345678", method: "PunyaDaan Click & Pay", amount: 2100),
    Transaction(time: "11:11 am", donorName: "Manish Goel", utr: "12345678", method: "PunyaDaanQR", amount: 1111),
    Transaction(time: "11:21 am", donorName: "Mayank Garg", utr: "23456789", method: "PunyaDaan Wallet", amount: 500),
    Transaction(time: "01:21 pm", donorName: "Sachin Aggarwal", utr: "22345678", method: "PunyaDaan Click & Pay", amount: 2100),
]
