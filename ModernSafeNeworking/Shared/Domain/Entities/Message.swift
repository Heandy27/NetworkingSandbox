//
//  Message.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//

import Foundation

struct Message: Decodable, Identifiable {
    var id: Int
    var from: String
    var text: String
}
