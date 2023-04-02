//
//  Character.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public struct Character: Codable, Identifiable {
    public var id: Int
    public var name: String
    public var status: String
    public var species: String
    public var type: String
    public var gender: String
    public var origin: CharacterOrigin
    public var location: CharacterLocation
    public var image: String
    public var episode: [String]
    public var url: String
    public var created: String
}
