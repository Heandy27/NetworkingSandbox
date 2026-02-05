//
//  NetworkManagerKey.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 5/2/26.
//
import Foundation
import SwiftUI

struct NetworkManagerKey: EnvironmentKey {
    static var defaultValue = NetworkManager(environment: .testing)
}


extension EnvironmentValues {
    var networkManager: NetworkManager {
        get { self[NetworkManagerKey.self] }
        set { self[NetworkManagerKey.self] = newValue }
    }
}
