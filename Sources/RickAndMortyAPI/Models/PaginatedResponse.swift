//
//  PaginatedResponse.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public struct Pagination: Decodable {
    public var count: Int
    public var pages: Int?
    public var next: String?
    public var prev: String?
}

public struct PaginatedResponse<T: Decodable>: Decodable {
    public var info: Pagination?
    public var results: [T]
}
