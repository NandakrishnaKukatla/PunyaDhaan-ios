import SwiftUI

struct settingsView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                // Background stays consistent with the rest of the app
                Color(UIColor.systemGroupedBackground).ignoresSafeArea()
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 24) {
                        
                        // MARK: - Donee Header (Kept consistent for navigation sync)
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
                        
                        // MARK: - Main Settings Control Box
                        VStack(spacing: 0) {
                            // Bold Branded Header (Differentiates from Event Page)
                            HStack(spacing: 12) {
                                Image(systemName: "gearshape.fill")
                                    .font(.system(size: 28))
                                
                                Text("SETTINGS")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                Spacer()
                            }
                            .padding()
                            .background(Color.orange) // Solid orange pop!
                            .foregroundStyle(.white)
                            
                            // Inner Card Options (Outlined Style)
                            VStack(spacing: 16) {
                                
                                // 1. Edit Profile
                                Button(action: {}) {
                                    ZStack {
                                        HStack {
                                            Circle()
                                                .fill(Color.orange)
                                                .frame(width: 36, height: 36)
                                                .overlay(
                                                    Image(systemName: "person.fill")
                                                        .foregroundStyle(.white)
                                                        .font(.subheadline)
                                                )
                                                .padding(.leading, 6)
                                            Spacer()
                                        }
                                        
                                        Text("EDIT PROFILE")
                                            .font(.subheadline)
                                            .fontWeight(.bold)
                                            .foregroundStyle(.orange)
                                    }
                                    .frame(height: 50)
                                    .background(Color.white)
                                    .clipShape(Capsule())
                                    .overlay(
                                        Capsule().stroke(Color.orange.opacity(0.5), lineWidth: 2)
                                    )
                                }
                                
                                // 2. Request Change Mobile
                                SettingsOutlineButton(title: "REQUEST FOR CHANGE OF MOBILE NUMBER")
                                
                                // 3. Upload Poster
                                SettingsOutlineButton(title: "UPLOAD THE POSTER OF THE EVENT")
                            }
                            .padding(.horizontal, 20)
                            .padding(.vertical, 25)
                            .background(Color(UIColor.systemBackground))
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .shadow(color: .orange.opacity(0.15), radius: 10, y: 4) // Tinted shadow for flavor
                        .padding(.horizontal)
                        
                        // MARK: - External Action Buttons
                        VStack(spacing: 16) {
                            // Approval Button uses Red to stand out as a major action
                            Button(action: {}) {
                                Text("REQUEST FOR APPROVAL")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 16)
                                    .background(Color.red)
                                    .clipShape(Capsule())
                                    .shadow(color: .red.opacity(0.3), radius: 5, y: 2)
                            }
                            
                            // Promote & Share HStack
                            HStack(spacing: 15) {
                                actionPillButton(title: "PROMOTE EVENT", bgColor: .white, textColor: .red)
                                actionPillButton(title: "SHARE EVENT", bgColor: .white, textColor: .red)
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

// MARK: - Reusable Outline Button for Settings
struct SettingsOutlineButton: View {
    var title: String
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity)
                .frame(height: 50)
                .background(Color.white)
                .clipShape(Capsule())
                .overlay(
                    Capsule().stroke(Color.gray.opacity(0.3), lineWidth: 2)
                )
        }
    }
}

// MARK: - Reusable External Pill Button (Renamed slightly so it doesn't clash if you drop it next to the Event page!)
struct actionPillButton: View {
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
    settingsView()
}
