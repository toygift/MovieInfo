//
//  TV.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 10..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import Alamofire

struct Tv: Codable {
    let page, totalResults, totalPages: Int
    let results: [TvResult]
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case totalResults = "total_results"
        case totalPages = "total_pages"
        case results = "results"
    }
}

struct TvResult: Codable {
    let originalName: String
    let genreIDS: [Int]
    let name: String
    let popularity: Double
    let originCountry: [String]
    let voteCount: Int
    let firstAirDate, backdropPath, originalLanguage: String
    let id: Int
    let voteAverage: Double
    let overview, posterPath: String
    
    enum CodingKeys: String, CodingKey {
        case originalName = "original_name"
        case genreIDS = "genre_ids"
        case name = "name"
        case popularity = "popularity"
        case originCountry = "origin_country"
        case voteCount = "vote_count"
        case firstAirDate = "first_air_date"
        case backdropPath = "backdrop_path"
        case originalLanguage = "original_language"
        case id = "id"
        case voteAverage = "vote_average"
        case overview = "overview"
        case posterPath = "poster_path"
        
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
        return response(queue: queue, responseSerializer: decodableResponseSerializer(), completionHandler: completionHandler)
    }
    
//    @discardableResult
//    func responseTv(queue: DispatchQueue? = nil, completionHandler: @escaping (DataResponse<Tv>) -> Void) -> Self {
//        return responseDecodable(queue: queue, completionHandler: completionHandler)
//    }
}
protocol HJrequest {
    var router: String { get }
    var api: String { get }
    
    associatedtype T: Decodable
}
extension HJrequest {
    var api: String { return "tv/airing_today" }
    
    var domain: String {
        return "https://api.themoviedb.org/3"
    }
    
    // T is used in DataResponse<T>
    func requestTV(completionHandler: @escaping (DataResponse<T>) -> Void) {
        let url = "\(domain)/\(api)/\(router)"
        Alamofire.request(url).responseDecodable(completionHandler: completionHandler)
    }
}

struct ARequset: HJrequest {
    let router = "?api_key=51d168b67b261fc77c46c529e1d6b6ef&language=ko-KR&page=1"
    typealias T = Tv
}
