//
//  AiringToday.swift
//  MovieInfo
//
//  Created by Jaeseong on 2018. 5. 11..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit

class AiringToday: UIViewController {

    var today: TV_AiringTodayRequest.T!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TV_AiringTodayRequest().requestTmdb { (response) in
            if let todayResponse = response.result.value {
                self.today = todayResponse
            }
        }
        print("가가가가가가",self.today)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
