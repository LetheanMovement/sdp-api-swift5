//
// LetheanSDPClientVpnAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class LetheanSDPClientVpnAPI {

    /**

     - parameter dataDir: (query) Returns the binary version 
     - parameter version: (query) Returns the binary version (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func startLetheand(dataDir: String, version: Bool? = nil, apiResponseQueue: DispatchQueue = LetheanSDPAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) -> RequestTask {
        return startLetheandWithRequestBuilder(dataDir: dataDir, version: version).execute(apiResponseQueue) { result in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     - GET /letheand/start
     - parameter dataDir: (query) Returns the binary version 
     - parameter version: (query) Returns the binary version (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func startLetheandWithRequestBuilder(dataDir: String, version: Bool? = nil) -> RequestBuilder<Void> {
        let localVariablePath = "/letheand/start"
        let localVariableURLString = LetheanSDPAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "version": version?.encodeToJSON(),
            "data_dir": dataDir.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = LetheanSDPAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}