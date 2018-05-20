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

class KobisAPI: NSObject {
    
    static let shared = KobisAPI()
    func boxOffice(url: String, indicator: Bool, completion: ((_ response : JSON?) -> (Void))? = nil) {
        
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
