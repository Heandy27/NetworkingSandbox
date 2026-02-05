//
//  HttpMethods.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

/// HttpMethods
enum HTTPMethod: String {
    case delete, get, patch, post, put
    
    var rawValue: String {
        String(describing: self).uppercased()
    }
    
}
