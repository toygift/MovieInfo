//
//  TvData.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 10..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

struct TV_AiringTodayRequest: APIRequest {
    typealias T = Tv
    let domain = "https://api.themoviedb.org/3"
    let api = "tv/airing_today"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}

struct TV_OnTheAirRequest: APIRequest {
    typealias T = Tv
    let domain = "https://api.themoviedb.org/3"
    let api = "tv/on_the_air"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct TV_PopularRequest: APIRequest {
    typealias T = Tv
    let domain = "https://api.themoviedb.org/3"
    let api = "tv/popular"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct TV_TopRateRequest: APIRequest {
    typealias T = Tv
    let domain = "https://api.themoviedb.org/3"
    let api = "tv/top_rated"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
