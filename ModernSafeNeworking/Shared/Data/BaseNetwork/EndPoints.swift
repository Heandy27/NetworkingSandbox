//
//  EndPoints.swift
//  ModernSafeNeworking
//
//  Created by Andy Heredia on 4/2/26.
//
import Foundation

enum EndPoints: String {
    case login = "/api/auth/login"

    case register = "/api/auth/register"
    case fetchMe = "/api/users/me"
    case heroes = "/api/heroes"
    case heroesWithRelations = "/api/heroes/relations"
    
    case addFavorite = "/api/favorites"

}
