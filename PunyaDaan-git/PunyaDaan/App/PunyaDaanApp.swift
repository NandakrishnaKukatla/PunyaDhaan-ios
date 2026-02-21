//
//  PunyaDaanApp.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

@main
struct PunyaDaanApp: App {
    @State private var authViewModel = AuthViewModel()
    @State private var showSplash: Bool = true
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if showSplash {
                    splashView()
                        .transition(.opacity)
                        .onAppear {
                            Task {
                                try? await Task.sleep(for: .seconds(4))
                                
                                withAnimation(.easeOut(duration: 1)) {
                                    showSplash = false
                                }
                            }
                        }
                } else {
                    // Normal App Routing
                    if authViewModel.isAuthenticated {
                        mainTabView()
                            .environment(authViewModel)
                    } else {
                        loginView()
                            .environment(authViewModel)
                    }
                }
            }
        }
    }
}
