//
//  ThirdViewController.swift
//  customTabBar
//
//  Created by μμΉν on 2022/06/25.
//

import UIKit

class ThirdViewController : UIViewController
{
    var content : ThirdViewContents?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        content = ThirdViewContents(view: &self.view)
    }
}
