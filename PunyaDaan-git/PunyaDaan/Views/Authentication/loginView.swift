//
//  loginView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct loginView: View {
    @Environment(AuthViewModel.self) var authViewModel
    @State private var input: String = ""
    @State private var navigateToOTP: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()
                
                // MARK: - App Logos & Slogan
                HStack(spacing: 20) {
                    VStack {
                        Image(systemName: "sparkles") // Placeholder for KANYADAAN icon
                            .font(.largeTitle)
                        Text("KANYADAAN") //
                            .font(.caption)
                    }
                    VStack {
                        Image(systemName: "heart.fill") // Placeholder for CHARITY icon
                            .font(.largeTitle)
                        Text("CHARITY") //
                            .font(.caption)
                    }
                    VStack {
                        Image(systemName: "leaf.fill") // Placeholder for GAUSHALA icon
                            .font(.largeTitle)
                        Text("GAUSHALA DAAN") //
                            .font(.caption)
                    }
                }
                .foregroundStyle(.orange)
                
                Text("Digital Bharat ka Digital Daanpatra") //
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                // MARK: - Input Field
                TextField("ENTER MOBILE NO. OR EMAIL", text: $input) //
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal, 40)
                    .keyboardType(.default)
                    .textInputAutocapitalization(.never)
                
                // MARK: - Next Button
                Button(action: {
                    authViewModel.mobileOrEmail = input
                    navigateToOTP = true
                }) {
                    Text("NEXT") //
                        .font(.headline)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.red)
                        .clipShape(Capsule())
                }
                .padding(.horizontal, 40)
                
                Spacer()
                
                // MARK: - Footer Slogan
                VStack {
                    Text("\"पुण्यदान करते जाओ,") //
                    Text("लाईफ मे आगे बढ़ते जाओ\"") //
                }
                .font(.headline)
                .foregroundStyle(.orange)
                .padding(.bottom)
            }
            .navigationDestination(isPresented: $navigateToOTP) {
                otpView()
            }
        }
    }
}
