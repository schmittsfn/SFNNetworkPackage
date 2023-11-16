//
//  NetworkManager.swift
//
//
//  Created by Stefan Schmitt on 09/10/2023.
//

import AsyncHTTPClient
import Foundation
import NIOCore

public class NetworkManager {
    public static let shared = NetworkManager()
    
    private let httpClient = HTTPClient(eventLoopGroupProvider: .singleton)
    
    private init() {}
    
    deinit {
        try? httpClient.syncShutdown()
    }

    func fetch(endpoint: Endpoint) async throws -> Data {
        guard let url = URL(string: endpoint.url) else {
            throw URLError(.badURL)
        }
        
        let request = try HTTPClient.Request(url: url, method: endpoint.httpMethod)
        
        let response = try await httpClient.execute(request: request, deadline: .now() + .seconds(30)).get()
        
        guard response.status == .ok else {
            throw URLError(.badServerResponse)
        }
        
        return Data(buffer: response.body ?? ByteBuffer())
    }
}
