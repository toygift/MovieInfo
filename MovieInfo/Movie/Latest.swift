//
//  Latest.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class Latest: Movies, IndicatorInfoProvider {

    var data: Movie_LatestRequest.T!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_LatestRequest().requestTmdb { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.movies = result
            }
        }
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "최신")
    }
}
