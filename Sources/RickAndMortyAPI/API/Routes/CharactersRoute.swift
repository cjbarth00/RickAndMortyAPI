//
//  CharactersRoute.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public enum CharactersRoute: Routable {
    case getCharacters
    case getCharacter(id: String)
    
    public var path: String {
        switch self {
        case .getCharacters:
            return "https://rickandmortyapi.com/api/character"
        case .getCharacter(let id):
            return "https://rickandmortyapi.com/api/character/\(id)"
        }
    }
    
    public var type: RequestType {
        return .get
    }
    
    public var header: [String : String]? {
        return nil
    }
    
    public var body: [String : String]? {
        return nil
    }
}
