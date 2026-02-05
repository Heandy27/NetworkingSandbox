//
//  ModernSafeNeworkingApp.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//

import SwiftUI

@main
struct ModernSafeNeworkingApp: App {
    #if DEBUG
    @State var networkManager = NetworkManager(environment: .testing)
    #else
    @State var networkManager = NetworkManager(environment: .production)
    #endif
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.networkManager, networkManager)
        }
    }
}
