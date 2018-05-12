//
//  TopRate.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 3..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct Movie: Codable {
    let movielist: [MovieList]
    
    enum CodingKeys: String, CodingKey {
        case movielist = "results"
        
    }
}

struct MovieList: Codable {
    let posterPath, backdropPath: String
    let voteCount: Int
    let overview, originalTitle: String
    let voteAverage, popularity: Double
    let releaseDate: String
    let title: String
    let adult: Bool
    
    enum CodingKeys: String, CodingKey {
        case posterPath = "poster_path"
        case backdropPath = "backdrop_path"
        case voteCount = "vote_count"
        case overview = "overview"
        case originalTitle = "original_title"
        case voteAverage = "vote_average"
        case popularity = "popularity"
        case releaseDate = "release_date"
        case title = "title"
        case adult = "adult"
        
    }
}
