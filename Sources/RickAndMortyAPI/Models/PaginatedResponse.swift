//
//  PaginatedResponse.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

struct Pagination: Decodable {
    var count: Int
    var pages: Int?
    var next: String?
    var prev: String?
}

struct PaginatedResponse<T: Decodable>: Decodable {
    var info: Pagination?
    var results: [T]
}
