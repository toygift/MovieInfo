//
//  Extension.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

extension UIStoryboard {
    enum Storyboard: String {
        case Main
        case BoxOffice
        case Movie
        case Tv
        
        var storyName: String {
            return rawValue
        }
    }
    class func storyboard(stroyboard: Storyboard, bundle: Bundle? = nil) -> UIStoryboard {
        return UIStoryboard(name: stroyboard.storyName, bundle: bundle)
    }
}
