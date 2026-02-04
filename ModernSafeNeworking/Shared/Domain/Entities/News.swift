//
//  News.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

struct News: Decodable, Identifiable {
    var id: Int
    var title: String
    var strap: String
    var url: URL
}
