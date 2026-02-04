//
//  EndPoints.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

struct Endoints <T: Decodable> {
    var url: URL
    var type: T.Type
}

extension Endoints where T == [News] {
    static let headlines = Endoints(url: URL(string: "\(ConstantsApp.CONS_API_URL)headlines.json")!, type: [News].self)
}

extension Endoints where T == [Message] {
    static let messages = Endoints(url: URL(string: "\(ConstantsApp.CONS_API_URL)messages.json")!, type: [Message].self)
}
