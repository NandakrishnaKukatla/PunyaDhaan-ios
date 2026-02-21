//
//  userRole.swift
//  PunyaDaan
//
//  Created by NxtWave on 20/02/26.
//

import Foundation

enum UserRole: String, CaseIterable {
    case donator = "Donator" //
    case donee = "Donee" //
    case none
}

struct User {
    var id: String
    var name: String
    var role: UserRole
}
