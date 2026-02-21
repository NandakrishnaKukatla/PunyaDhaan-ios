//
//  otpView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct otpView: View {
    @Environment(AuthViewModel.self) var authViewModel
    @State private var otpInput: String = ""
    @State private var navigateToRole: Bool = false
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Text("Digital Bharat ka Digital Daanpatra") // [cite: 18]
                .font(.headline)
                .foregroundStyle(.secondary)
            
            // MARK: - OTP Field
            TextField("ENTER OTP", text: $otpInput) // [cite: 19]
                .textFieldStyle(.roundedBorder)
                .keyboardType(.numberPad)
                .padding(.horizontal, 40)
            
            // MARK: - Next Button
            Button(action: {
                authViewModel.otp = otpInput
                navigateToRole = true
            }) {
                Text("NEXT") // [cite: 22]
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.red)
                    .clipShape(Capsule())
            }
            .padding(.horizontal, 40)
            
            Spacer()
            
            VStack {
                Text("\"पुण्यदान करते जाओ,") // [cite: 23]
                Text("लाईफ मे आगे बढ़ते जाओ\"") // [cite: 24]
            }
            .font(.headline)
            .foregroundStyle(.orange)
            .padding(.bottom)
        }
        .navigationDestination(isPresented: $navigateToRole) {
            roleSelectionView()
        }
    }
}
