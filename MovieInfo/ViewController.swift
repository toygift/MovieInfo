//
//  ViewController.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 4. 21..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        alamo()
    }
    
    // TODO: 데일리, 위클리
    
    func alamo() {
        //    searchWeeklyBoxOfficeList
        let url = "https://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=6e1cdfab5749691be4c51818a1e59919&targetDt=20180420"
//        let parameters = ["key": "6e1cdfab5749691be4c51818a1e59919","targetDt":"20180420"]
        
        let call = Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
        call.responseJSON { (response) in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print(json)

            case .failure(let error):
                print(error)
            }
        }
    }
}

