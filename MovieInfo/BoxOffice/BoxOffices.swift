//
//  BoxOffice.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 1..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip
import ExpandableCell

class BoxOffices: UIViewController, ExpandableDelegate {
    
    @IBOutlet weak var tableView: ExpandableTableView!
    var texts: String!
    var data: BoxOfficeResult!
    var boxOfficeList: [BoxOfficeList] = [] {
        didSet {
//            self.tableView.delegate = self
//            self.tableView.dataSource = self
            self.tableView.expandableDelegate = self
            self.tableView.animation = .automatic
            self.tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        self.tableView.rowHeight = UITableViewAutomaticDimension
//        self.tableView.estimatedRowHeight = UITableViewAutomaticDimension
    }
}

extension BoxOffices {
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOfficeExpand") as! BoxOfficeTableViewCellExpand
        print("BoxOfficeExpand",self.boxOfficeList[indexPath.row])
        cell.setData(data: self.boxOfficeList[indexPath.row])
        return [cell]
    }
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return self.boxOfficeList.count
    }
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice") as? BoxOfficeTableViewCell
        print(self.boxOfficeList[indexPath.row])
        cell?.setData(data: self.boxOfficeList[indexPath.row])
        return cell!
    }

    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
        return [100]
    }
    
    
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return self.boxOfficeList.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "BoxOffice", for: indexPath) as? BoxOfficeTableViewCell
//        cell?.setData(data: self.boxOfficeList[indexPath.row])
//        return cell!
//    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
}
