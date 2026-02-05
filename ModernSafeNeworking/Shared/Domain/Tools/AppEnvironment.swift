//
//  ConstantsApp.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//

import Foundation

public struct AppEnvironment {
    
    var name: String
    var baseURL: URL
    var session: URLSession
    
    static let production = AppEnvironment(
        name: "Production",
        baseURL: URL(string: "https://hws.dev/")!,
        session: {
            let configuration = URLSessionConfiguration.default
            configuration.httpAdditionalHeaders = [
                "APIKey": "production-key-from-keychain"
            ]
            return URLSession(configuration: configuration)
        }()
    )
    
    #if DEBUG
    static let testing = AppEnvironment(
        name: "Testing",
        baseURL: URL(string: "https://hws.dev/")!,
        session: {
            let configuration = URLSessionConfiguration.ephemeral
            configuration.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
            configuration.httpAdditionalHeaders = [
                "APIKey": "test-key"
            ]
            return URLSession(configuration: configuration)
        }()
    )
    #endif
    
    public static let CONS_API_URL = ""
}
