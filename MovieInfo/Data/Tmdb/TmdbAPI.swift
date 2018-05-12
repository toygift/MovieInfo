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
let TMDB_POSTER = "https://image.tmdb.org/t/p/original"

class TmdbAPI: NSObject {
    static let shared = TmdbAPI()
    
    func tmdb(url: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
        //    searchWeeklyBoxOfficeList
        if indicator { MKProgress.show() }
        let call = Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
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
    func tmdbb(url: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
        //    searchWeeklyBoxOfficeList
        if indicator { MKProgress.show() }
        let call = Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
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
