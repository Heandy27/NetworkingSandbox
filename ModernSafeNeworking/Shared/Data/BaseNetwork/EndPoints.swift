//
//  EndPoints.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

struct Endpoint <T: Decodable> {
    var path: String
    var type: T.Type
    var method = HTTPMethod.get
    var headers = [String: String]()
    var keypath: String?
}

extension Endpoint where T == [News] {
    static let headlines = Endpoint(path: "headlines.json", type: [News].self)
}

extension Endpoint where T == [Message] {
    static let messages = Endpoint(path: "messages.json", type: [Message].self)
}

extension Endpoint where T == String {
    static let city = Endpoint(path: "nested.json", type: String.self, keypath: "response.user.address.city")
}
