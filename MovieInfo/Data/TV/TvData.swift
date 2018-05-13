//
//  TvData.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 10..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct TV_AiringTodayRequest: TMDBRequest {
    typealias T = Tv
    
    let api = "tv/airing_today"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}

struct TV_OnTheAirRequest: TMDBRequest {
    typealias T = Tv
    
    let api = "tv/on_the_air"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct TV_PopularRequest: TMDBRequest {
    typealias T = Tv
    
    let api = "tv/popular"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct TV_TopRateRequest: TMDBRequest {
    typealias T = Tv
    
    let api = "tv/top_rated"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
