//
//  TmdbData.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 3..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import SwiftyJSON

class TmdbData: NSObject {
    static let shared = TmdbData()
    
    func movieTopRate(response json: JSON) -> MovieTopRateResult {
        let topRate = MovieTopRateResult(movieTopRateList: json["results"].arrayValue.map({ (json) -> MovieTopRateList in
            let movieTopRate = MovieTopRateList(posterPath: json["poster_path"].stringValue, backdropPath: json["backdrop_path"].stringValue, voteCount: json["vote_count"].intValue, overview: json["overview"].stringValue, originalTitle: json["original_title"].stringValue, voteAverage: json["vote_average"].doubleValue, popularity: json["popularity"].doubleValue, releaseDate: json["release_date"].stringValue, title: json["title"].stringValue, adult: json["adult"].boolValue)
            return movieTopRate
        }))
        return topRate
    }
}
