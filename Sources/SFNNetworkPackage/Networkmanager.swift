//
//  NetworkManager.swift
//
//
//  Created by Stefan Schmitt on 09/10/2023.
//

import AsyncHTTPClient
import Foundation

public class NetworkManager {
    public static let shared = NetworkManager()

    private init() {}

    public func fetchData<T: Decodable>(_ endpoint: Endpoint, responseType: T.Type) async throws -> T {
        // Implement your networking code here using AsyncHTTPClient
        // You can use the `endpoint` enum to construct the request
        // and parse the response into the specified `responseType`.
        // Return the parsed data.
        // Example:
        // let response = try await HTTPClient.shared.get(url: endpoint.url).flatMapThrowing { try $0.content.decode(T.self) }.get()
        // return response
        
        
        fatalError("Not implemented")
    }
}
