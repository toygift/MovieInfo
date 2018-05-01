//
//  BoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import MKProgress

class BoxOffice: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var tableView: UITableView!
    var data: BoxOfficeResult!
    var boxOfficeList: [BoxOfficeList] = [] {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        MKProgress.config.activityIndicatorColor = .darkGray
        MKProgress.config.hudColor = .clear
    }
}

extension BoxOffice {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.boxOfficeList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
        cell?.setData(data: self.boxOfficeList[indexPath.row])
//        KobisAPI.shared.aa(movieCd: self.data.boxOfficeList[indexPath.row].movieCd, indicator: true) { (res) -> (Void) in
//            if let json = res {
//                let direct = json["movieInfoResult"]["movieInfo"]["directors"][0]["peopleNm"].stringValue
//                , directors: direct)
//            }
//        }
//        TmdbAPI.shared.getPoster(title: data.movieNm, indicator: true) { (res) -> (Void) in
//            if let json = res {
//                print("json",json)
//                for i in json["items"].arrayValue {
//                    if i["title"].stringValue.replacingOccurrences(of: "</b>", with: "").replacingOccurrences(of: "<b>", with: "") == data.movieNm {
//                        if i["director"].stringValue.replacingOccurrences(of: "|", with: "").contains(directors) {
//
//                            self.poster.kf.setImage(with: URL(string: i["image"].stringValue), placeholder: nil, options: [.transition(ImageTransition.fade(0.5))], progressBlock: nil, completionHandler: nil)
//                        }
//
//                    }
//                }
//            }
//        }
        return cell!
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 500
    }
}
