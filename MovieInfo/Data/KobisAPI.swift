//
//  API.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
import MKProgress
let KOBIS_APIKEY = "6e1cdfab5749691be4c51818a1e59919"

class KobisAPI: NSObject {
    
    static let shared = KobisAPI()
    func boxOffice(type: String, weekGb:String?, date: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
        //    searchWeeklyBoxOfficeList
        var url: String!
        
        if type == "daily" {
            url = "https://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=\(KOBIS_APIKEY)&targetDt=\(date)"
        } else {
            guard let weekGbs = weekGb else { return }
            url = "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.json?key=\(KOBIS_APIKEY)&targetDt=\(date)&weekGb=\(weekGbs)"
        }
        
        
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
    
    func aa(movieCd: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
       let url =  "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json?key=\(KOBIS_APIKEY)&movieCd=\(movieCd)"
        
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
