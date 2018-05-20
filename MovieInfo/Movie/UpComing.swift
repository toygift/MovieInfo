//
//  UpComing.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import MKProgress

class UpComing: Movies, IndicatorInfoProvider {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_UpComingRequest().requestAPI { (response) in
            if let result = response.result.value {
                MKProgress.hide()
                self.movies = result
            }
        }
    }

    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "업커밍")
    }
}
