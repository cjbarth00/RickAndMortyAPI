//
//  Routable.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation

public protocol Routable {
    var path: String { get }
    var type: RequestType { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
}

public enum RequestType: String {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
}
