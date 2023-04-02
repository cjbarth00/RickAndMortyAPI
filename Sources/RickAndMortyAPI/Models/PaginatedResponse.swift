//
//  PaginatedResponse.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public struct Pagination: Decodable {
    var count: Int
    var pages: Int?
    var next: String?
    var prev: String?
}

public struct PaginatedResponse<T: Decodable>: Decodable {
    var info: Pagination?
    var results: [T]
}
