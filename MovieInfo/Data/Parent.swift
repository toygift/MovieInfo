//
//  Parent.swift
//  MovieInfo
//
//  Created by toygift on 2018. 5. 4..
//  Copyright © 2018년 Jaeseong. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class Parent: SegmentedPagerTabStripViewController {

    @IBAction func search() {
        let alert = UIAlertController(style: .actionSheet, title: "TextField")
        let config: TextField.Config = { textField in
            textField.becomeFirstResponder()
            textField.textColor = .black
            textField.placeholder = "Type something"
            textField.leftViewPadding = 12
            textField.borderWidth = 1
            textField.cornerRadius = 8
            textField.borderColor = UIColor.lightGray.withAlphaComponent(0.5)
            textField.backgroundColor = nil
            textField.keyboardAppearance = .default
            textField.keyboardType = .default
            textField.isSecureTextEntry = false
            textField.returnKeyType = .done
            textField.action { textField in
                let text = BoxOffice()
                text.texts = textField.text
                print(text.texts)
            }
        }
        alert.addOneTextField(configuration: config)
        alert.addAction(title: "OK", style: .cancel)
        alert.show()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // change segmented style
        settings.style.segmentedControlColor = UIColor.lightGray
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
