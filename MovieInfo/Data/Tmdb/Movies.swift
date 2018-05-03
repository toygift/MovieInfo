//
//  TopRate.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 3..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct MovieTopRateResult {
    let results: [MovieTopRateList]
}

struct MovieTopRateList {
    let posterPath, backdropPath: String
    let voteCount: Int
    let overview, originalTitle: String
    let voteAverage, popularity: Double
    let releaseDate: String
    let title: String
    let adult: Bool
}
