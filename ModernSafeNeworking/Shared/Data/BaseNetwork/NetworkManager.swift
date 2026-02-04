//
//  NetworkManager.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//

import Foundation

struct NetworkManager {
    func fetch(_ resource: Endoints) async throws -> Data {
        var request = URLRequest(url: resource.url)
        var (data, _) = try await URLSession.shared.data(for: request)
        return data
    }
}
