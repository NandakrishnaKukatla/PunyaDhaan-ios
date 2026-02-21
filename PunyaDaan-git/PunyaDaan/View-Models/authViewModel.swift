//
//  authViewModel.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import SwiftUI

@Observable
class AuthViewModel {
    var isAuthenticated: Bool = false
    var currentRole: UserRole = .none
    var mobileOrEmail: String = "" //
    var otp: String = "" //
    
    func verifyOTP() {
        // Mock network call
        // Proceed to role selection
    }
    
    func selectRole(_ role: UserRole) {
        self.currentRole = role
        self.isAuthenticated = true
    }
    
    func logout() {
        self.isAuthenticated = false
        self.currentRole = .none
        self.mobileOrEmail = ""
        self.otp = ""
    }
}
