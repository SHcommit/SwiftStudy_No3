//
//  SecondViewController.swift
//  customTabBar
//
//  Created by μμΉν on 2022/06/25.
//

import UIKit

class SecondViewController : UIViewController
{
    var content : SecondViewContents?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        content = SecondViewContents(view: &self.view)

    }
}
