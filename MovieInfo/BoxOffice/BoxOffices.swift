//
//  BoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class BoxOffices: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var texts: String?
    var data: BoxOfficeResult! {
        didSet {
            self.tableView.delegate = self
            self.tableView.dataSource = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
    }
}

extension BoxOffices {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1//self.data.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if self.data[section].opened == true {
//            return 2
//        } else {
            return 1
//        }
//
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.row == 0 {
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell else { return UITableViewCell() }
//            cell.setData(data: self.data[indexPath.section])
//            return cell
//            
//        } else {
//            guard let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOfficeExpand", for: indexPath) as? BoxOfficeTableViewCellExpand else { return UITableViewCell() }
//            cell.setData(data: self.data[indexPath.section])
//            return cell
//        }
        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 0 {
//            if self.data[indexPath.section].opened == true {
//                self.data[indexPath.section].opened = false
//                let section = IndexSet.init(integer: indexPath.section)
//                self.tableView.reloadSections(section, with: .none)
//            } else {
//                self.data[indexPath.section].opened = true
//                let section = IndexSet.init(integer: indexPath.section)
//                self.tableView.reloadSections(section, with: .none
//                )
//            }
//        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
