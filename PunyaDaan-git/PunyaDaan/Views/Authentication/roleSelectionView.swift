//
//  roleSelectionView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct roleSelectionView: View {
    @Environment(AuthViewModel.self) var authViewModel
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Select Your Catogory")
                .font(.title2)
                .bold()
            
            HStack(spacing: 40) {
                // MARK: - Donator Option
                Button(action: {
                    authViewModel.selectRole(.donator)
                }) {
                    VStack {
                        Image(systemName: "person.crop.circle.badge.plus")
                            .font(.system(size: 60))
                        Text("Donator")
                            .font(.headline)
                    }
                    .foregroundStyle(.orange)
                }
                
                
                Button(action: {
                    authViewModel.selectRole(.donee)
                }) {
                    VStack {
                        Image(systemName: "building.columns.circle.fill")
                            .font(.system(size: 60))
                        Text("Donee") // [cite: 32]
                            .font(.headline)
                    }
                    .foregroundStyle(.red)
                }
            }
            
            Spacer()
        }
        .padding(.top, 50)
        .navigationBarBackButtonHidden(true)
    }
}
