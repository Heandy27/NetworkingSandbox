//
//  EndPoints.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

struct Endoints <T: Decodable> {
    var path: String
    var type: T.Type
    var method = HTTPMethod.get
    var headers = [String: String]()
}

extension Endoints where T == [News] {
    static let headlines = Endoints(path: "headlines.json", type: [News].self)
}

extension Endoints where T == [Message] {
    static let messages = Endoints(path: "messages.json", type: [Message].self)
}
