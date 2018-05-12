//
//  Popular.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 7..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Popular: Movies, IndicatorInfoProvider {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Movie_PopularRequest().requestTmdb { (response) in
            if let result = response.result.value {
                self.movies = result
            }
        }
    }
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: "인기")
    }
}
