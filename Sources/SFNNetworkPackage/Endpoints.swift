// auto generated using csv_to_swift_endpoint_enum

import AsyncHTTPClient
import NIOHTTP1


public enum Endpoint {
    case example_com_api_endpoint1
    case api2_com_endpoint2
    case example_org_service1
    case api3_net_resource3

    var url: String {
        switch self {
        case .example_com_api_endpoint1: return "https://example.com/api/endpoint1"
        case .api2_com_endpoint2: return "https://api2.com/endpoint2"
        case .example_org_service1: return "https://example.org/service1"
        case .api3_net_resource3: return "https://api3.net/resource3"
        }
    }
    var httpMethod: HTTPMethod {
        switch self {
        case .example_com_api_endpoint1: return .GET
        case .api2_com_endpoint2: return .POST
        case .example_org_service1: return .PUT
        case .api3_net_resource3: return .GET
        }
    }
}
