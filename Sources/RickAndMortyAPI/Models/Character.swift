//
//  Character.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public struct Character: Codable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: CharacterOrigin
    var location: CharacterLocation
    var image: String
    var episode: [String]
    var url: String
    var created: String
}
