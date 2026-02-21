//
//  createEventView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

struct createEventView: View {
    @State private var eventName: String = ""
    @State private var eventDate: Date = Date()
    
    var body: some View {
        NavigationStack {
            ZStack {
                // Native iOS grouped background color
                Color(UIColor.systemGroupedBackground).ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        
                        // MARK: - Donee Header (Matches other Donee pages)
                        VStack(spacing: 15) {
                            HStack {
                                Text("Devi Mandir Panipat")
                                    .font(.title2)
                                    .bold()
                                    .foregroundStyle(.primary)
                                Spacer()
                                Image(systemName: "bell.fill")
                                    .font(.title3)
                                    .foregroundStyle(.orange)
                            }
                            
                            HStack {
                                Button(action: {}) {
                                    HStack {
                                        Image(systemName: "calendar")
                                        Text("Date Range")
                                        Image(systemName: "chevron.down")
                                            .font(.caption)
                                    }
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .foregroundStyle(.orange)
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(Color.orange.opacity(0.15))
                                    .clipShape(Capsule())
                                }
                                
                                Button(action: {}) {
                                    HStack {
                                        Text("HELP")
                                        Image(systemName: "questionmark.circle.fill")
                                    }
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 8)
                                    .background(Color.orange)
                                    .clipShape(Capsule())
                                }
                                Spacer()
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                        
                        // MARK: - Main Event Form Card
                        VStack(spacing: 0) {
                            // Card Header
                            HStack(spacing: 12) {
                                Image(systemName: "calendar.badge.plus")
                                    .font(.system(size: 32))
                                    .foregroundStyle(.orange)
                                
                                Text("Create Event")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.primary)
                                Spacer()
                            }
                            .padding()
                            .background(Color(UIColor.systemGray6))
                            
                            // Form Inputs
                            VStack(spacing: 20) {
                                Text("Please Enter Event Details")
                                    .font(.headline)
                                    .foregroundStyle(.orange) // Using red to highlight
                                    .padding(.bottom, 5)
                                
                                // Input 1: Event Name
                                TextField("ENTER EVENT NAME", text: $eventName)
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .padding()
                                    .background(Color(UIColor.systemGray6))
                                    .clipShape(Capsule())
                                
                                // Input 2: Date Selector
                                HStack {
                                    Text("SELECT THE DATE OF EVENT")
                                        .font(.subheadline)
                                        .fontWeight(.medium)
                                        .foregroundStyle(eventDate == Date() ? .secondary : .primary)
                                    Spacer()
                                    Image(systemName: "calendar")
                                        .foregroundStyle(.orange)
                                }
                                .padding()
                                .background(Color(UIColor.systemGray6))
                                .clipShape(Capsule())
                                .overlay {
                                    // Hidden DatePicker overlaid for native functionality
                                    DatePicker("", selection: $eventDate, displayedComponents: .date)
                                        .blendMode(.destinationOver)
                                        .labelsHidden()
                                }
                                
                                // Input 3: Upload Poster
                                Button(action: {
                                    // Action to upload poster
                                }) {
                                    HStack {
                                        Text("UPLOAD THE POSTER OF THE EVENT")
                                            .font(.subheadline)
                                            .fontWeight(.medium)
                                        Spacer()
                                        Image(systemName: "square.and.arrow.up")
                                            .font(.title3)
                                    }
                                    .foregroundStyle(.orange)
                                    .padding()
                                    .background(Color.orange.opacity(0.15))
                                    .clipShape(Capsule())
                                }
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 25)
                        }
                        .background(Color(UIColor.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .shadow(color: .black.opacity(0.05), radius: 8, y: 3)
                        .padding(.horizontal)
                        
                        // MARK: - External Action Buttons
                        VStack(spacing: 16) {
                            // Approval Button
                            Button(action: {}) {
                                Text("REQUEST FOR APPROVAL")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color.orange)
                                    .clipShape(Capsule())
                            }
                            
                            // Promote & Share HStack (Matches layout exactly)
                            HStack(spacing: 15) {
                                ActionPillButton(title: "PROMOTE EVENT", bgColor: Color(UIColor.systemBackground), textColor: .orange)
                                ActionPillButton(title: "SHARE EVENT", bgColor: Color(UIColor.systemBackground), textColor: .orange)
                            }
                        }
                        .padding(.horizontal)
                        
                        // MARK: - Advertisement Banner
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color(UIColor.systemGray5))
                                .frame(height: 100)
                            
                            Text("ADVERTISEMENT")
                                .font(.subheadline)
                                .bold()
                                .foregroundStyle(.secondary)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 30)
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

// MARK: - Reusable Pill Button for bottom actions
struct ActionPillButton: View {
    var title: String
    var bgColor: Color
    var textColor: Color
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.caption)
                .fontWeight(.bold)
                .foregroundStyle(textColor)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(bgColor)
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.05), radius: 5, y: 2)
        }
    }
}

#Preview {
    createEventView()
}
