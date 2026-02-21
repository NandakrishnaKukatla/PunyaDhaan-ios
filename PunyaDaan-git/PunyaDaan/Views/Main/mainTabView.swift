//
//  mainTabView.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//
import SwiftUI

struct mainTabView: View {
    @Environment(AuthViewModel.self) var authViewModel
    
    var body: some View {
        TabView {
            // Tab 1: Home (Dynamically swaps based on role)
            Group {
                if authViewModel.currentRole == .donator {
                    donatorHomeView()
                } else {
                    doneeStatementView()
                }
            }
            .tabItem {
                Label("HOME", systemImage: "house.fill") // [cite: 77]
            }
            
            // Tab 2: Create Event
            createEventView()
                .tabItem {
                    Label("CREATE EVENT", systemImage: "calendar.badge.plus") // [cite: 78]
                }
            
            // Tab 3: Dynamic Middle Button
            Group {
                if authViewModel.currentRole == .donator {
                    Text("Scan & Donate View") // Placeholder
                        .tabItem {
                            Label("SCAN & DONATE", systemImage: "qrcode.viewfinder") // [cite: 79]
                        }
                } else {
                    Text("Manage QR View") // Placeholder
                        .tabItem {
                            Label("MANAGE QR", systemImage: "qrcode") // [cite: 217]
                        }
                }
            }
            
            // Tab 4: Statement
            bankStatementView()// Placeholder
                .tabItem {
                    Label("STATEMENT", systemImage: "doc.text") // [cite: 79, 218]
                }
            
            // Tab 5: Settings
            settingsView()
                .tabItem {
                    Label("SETTINGS", systemImage: "gearshape.fill")
                }
        }
        .tint(.orange)
    }
}
