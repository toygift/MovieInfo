//
//  TV.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 10..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

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


