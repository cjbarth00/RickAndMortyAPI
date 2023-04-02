//
//  APIClient.swift
//  
//
//  Created by Casey Barth on 4/2/23.
//

import Foundation
#if !os(macOS)
public enum APIErrors: Error {
    case failedToGetPath
    case failedToGetValidResponse
    case failedToDecode
    case serverError(statusCode: Int)
}

public struct APIClient {
    public func request<T: Decodable>(route: Routable, responseType: T.Type) async -> Result<T, Error> {
        guard let url = URL(string: route.path) else { return .failure(APIErrors.failedToGetPath) }
        
        var request = URLRequest(url: url)
        request.httpMethod = route.type.rawValue
        request.allHTTPHeaderFields = route.header
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            guard let response = response as? HTTPURLResponse else {
                return .failure(APIErrors.failedToGetValidResponse)
            }
            
            // Validate data response status code
            switch response.statusCode {
            case 200..<300:
                guard let decodedResponse = try? JSONDecoder().decode(responseType, from: data) else {
                    return .failure(APIErrors.failedToDecode)
                }
                return .success(decodedResponse)
            default:
                return .failure(APIErrors.serverError(statusCode: response.statusCode))
            }
            
        } catch {
            return .failure(error)
        }
    }
}
#endif
