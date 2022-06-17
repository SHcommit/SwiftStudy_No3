//
//  ReadViewController.swift
//  custom_button
//
//  Created by 양승현 on 2022/06/16.
//

import UIKit

class ReadViewController : UIViewController
{
    var content : ReadViewContentDTO?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        content = ReadViewContentDTO(self.view)
        
    }
}
