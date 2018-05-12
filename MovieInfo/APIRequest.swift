//
//  APIRequest.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 11..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import Alamofire
import MKProgress

protocol TMDBRequest {
    var api: String { get }
    var router: String { get }
    
    
    associatedtype T: Decodable
}
extension TMDBRequest {
    var domain: String { return "https://api.themoviedb.org/3" }
    // T is used in DataResponse<T>
    func requestTmdb(completionHandler: @escaping (DataResponse<T>) -> Void) {
        let url = "\(domain)/\(api)?\(router)"
        MKProgress.show()
        print("url",url)
        Alamofire.request(url).responseDecodable(completionHandler: completionHandler)
    }
}

// MARK: - Alamofire response handlers
extension DataRequest {
    fileprivate func decodableResponseSerializer<T: Decodable>() -> DataResponseSerializer<T> {
        return DataResponseSerializer { _, response, data, error in
            guard error == nil else { return .failure(error!) }
            
            guard let data = data else {
                return .failure(AFError.responseSerializationFailed(reason: .inputDataNil))
            }
            
            return Result { try JSONDecoder().decode(T.self, from: data) }
        }
    }
    
    @discardableResult
    fileprivate func responseDecodable<T: Decodable>(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<T>) -> Void) -> Self {
        MKProgress.hide()
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }
}


