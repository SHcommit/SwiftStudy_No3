//
//  ReadViewController.swift
//  custom_button
//
//  Created by μμΉν on 2022/06/16.
//

import UIKit

class ReadViewController : UIViewController
{
    var pEmail    : String?
    var pUpdate   : Bool?
    var pInterval : Double?
    
    var content : ReadViewContentVO?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        content = ReadViewContentVO(&self.view, self)
        
    }
}
