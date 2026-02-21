//
//  profileView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct donatorAccountView: View {
    // Mock Data
    @State private var userName: String = "Shresth Goel"
    @State private var location: String = "Panipat"
    @State private var mobileNumber: String = "+91 98765 43210"
    @State private var emailAddress: String = "shresth.goel@example.com"
    @State private var totalDonated: String = "₹45,678"
    @State private var totalDaans: String = "12"
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(spacing: 24) {
                    
                    // MARK: - Top Section: Profile Picture & Name
                    VStack(spacing: 12) {
                        ZStack(alignment: .bottomTrailing) {
                            Image(systemName: "person.crop.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                                .foregroundStyle(Color(UIColor.systemGray4), Color(UIColor.systemGray6))
                                .shadow(color: .black.opacity(0.1), radius: 5, y: 2)
                            
                            // Edit Profile Picture Button
                            Button(action: {}) {
                                Image(systemName: "camera.circle.fill")
                                    .resizable()
                                    .frame(width: 32, height: 32)
                                    .foregroundStyle(.white, .orange)
                                    .background(Circle().fill(Color.white))
                            }
                            .offset(x: 5, y: 5)
                        }
                        
                        VStack(spacing: 4) {
                            Text(userName)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundStyle(.primary)
                            
                            Text(location)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .padding(.top, 20)
                    
                    // MARK: - Impact / Stats Section
                    HStack(spacing: 15) {
                        ImpactStatCard(title: "Total Donated", value: totalDonated, icon: "indianrupeesign.circle.fill", color: .green)
                        ImpactStatCard(title: "Total Daans", value: totalDaans, icon: "heart.circle.fill", color: .red)
                    }
                    .padding(.horizontal)
                    
                    // MARK: - Personal Details Section
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Personal Details")
                            .font(.headline)
                            .foregroundStyle(.secondary)
                            .padding(.horizontal)
                        
                        VStack(spacing: 0) {
                            ProfileDetailRow(icon: "phone.fill", label: "Mobile Number", value: mobileNumber)
                            Divider()
                            ProfileDetailRow(icon: "envelope.fill", label: "Email Address", value: emailAddress)
                            Divider()
                            ProfileDetailRow(icon: "calendar", label: "Member Since", value: "Jan 2024")
                        }
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                        .shadow(color: .black.opacity(0.05), radius: 5, y: 2)
                        .padding(.horizontal)
                    }
                    
                    // MARK: - Action Buttons
                    VStack(spacing: 15) {
                        Button(action: {
                            
                        }) {
                            Text("EDIT PROFILE")
                                .font(.headline)
                                .foregroundStyle(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.orange)
                                .clipShape(Capsule())
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 10)
                }
                .padding(.bottom, 30)
            }
            .background(Color(UIColor.systemGroupedBackground)) // Matches the Settings view background
            .navigationTitle("My Account")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

// MARK: - Reusable Components

struct ImpactStatCard: View {
    var title: String
    var value: String
    var icon: String
    var color: Color
    
    var body: some View {
        VStack(spacing: 12) {
            Image(systemName: icon)
                .font(.system(size: 30))
                .foregroundStyle(color)
            
            VStack(spacing: 4) {
                Text(value)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.primary)
                
                Text(title)
                    .font(.caption)
                    .fontWeight(.medium)
                    .foregroundStyle(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color(UIColor.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(color: .black.opacity(0.05), radius: 5, y: 2)
    }
}

struct ProfileDetailRow: View {
    var icon: String
    var label: String
    var value: String
    
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: icon)
                .font(.title3)
                .foregroundStyle(.orange)
                .frame(width: 30)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(label)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(value)
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(.primary)
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    donatorAccountView()
}
