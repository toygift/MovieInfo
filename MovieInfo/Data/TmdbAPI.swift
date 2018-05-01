//
//  TmdnAPI.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import MKProgress

let TMDB_APIKEY = "51d168b67b261fc77c46c529e1d6b6ef"
class TmdbAPI: NSObject {
    static let shared = TmdbAPI()
    
    func getPoster(title: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
        //    searchWeeklyBoxOfficeList
//        let url = "https://api.themoviedb.org/3/search/movie?api_key=\(TMDB_APIKEY)&query=\(title)&language=ko-KR"
        
        let header = ["X-Naver-Client-Id":"BvQZXY9Z8bpKrX9b5xAF","X-Naver-Client-Secret":"UKKcg9BNup"]
        let url = "https://openapi.naver.com/v1/search/movie.json?query=\(title)"
        let udrl = url.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if indicator { MKProgress.show() }
        let call = Alamofire.request(udrl!, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: header)
        call.responseJSON { (response) in
            if indicator { MKProgress.hide() }
            switch response.result {
            case .success(let value):
                completion?(JSON(value))
            case .failure(let error):
                print(error)
            }
        }
    }
}
