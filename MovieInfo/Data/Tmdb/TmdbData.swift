//
//  TmdbData.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 3..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation

let TMDB_APIKEY = "51d168b67b261fc77c46c529e1d6b6ef"
let TMDB_POSTER = "https://image.tmdb.org/t/p/original"

struct Movie_TopRateRequest: TMDBRequest {
    typealias T = Movie
    
    let api = "movie/top_rated"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct Movie_PopularRequest: TMDBRequest {
    typealias T = Movie
    
    let api = "movie/popular"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct Movie_NowPlayingRequest: TMDBRequest {
    typealias T = Movie
    
    let api = "movie/now_playing"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct Movie_UpComingRequest: TMDBRequest {
    typealias T = Movie
    
    let api = "movie/upcoming"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR&page=1"
}
struct Movie_LatestRequest: TMDBRequest {
    typealias T = Movie
    
    let api = "movie/latest"
    let router = "api_key=\(TMDB_APIKEY)&language=ko-KR"
}
