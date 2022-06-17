//
//  ReadViewContentDTO.swift
//  custom_button
//
//  Created by 양승현 on 2022/06/16.
//

import UIKit

class ReadViewContentDTO
{
    var email     : UILabel?
    var update    : UILabel?
    var interval  : UILabel?
    var rvc       : ReadViewController?
    
    init(_ view : inout UIView)
    {
        self.email    = UILabel()
        self.update   = UILabel()
        self.interval = UILabel()
        
        rvc = view as? ReadViewController
    
        setEmailUI(email: &email,rvc: &rvc, view: &view)
        setUpdateUI(update: &update,rvc: &rvc, view: &view)
        setIntervalUI(interval: &interval, rvc: &rvc, view :&view)
    }
        
    
}

//MARK: - setContentsUI
extension ReadViewContentDTO
{
    func setEmailUI(email : inout UILabel?, rvc : inout ReadViewController?, view : inout UIView)
    {

        email =
        {
           var mail     = UILabel()
            mail.frame = CGRect(x: 50, y: 100, width: 300, height: 30)
            mail.text  = "전달받은 이메일 : \(rvc?.pEmail)"
            return mail
        }()
        if let testEmail = email
        {
            view.addSubview(testEmail)
        }
        else
        {
            NSLog("email 변수 에러")
        }
    }
    
    func setUpdateUI(update : inout UILabel?, rvc : inout ReadViewController?, view : inout UIView)
    {
        guard let testUpdate = update else
        {
            return NSLog("update 인스턴스 생성 안됐어요.")
        }
        update?.frame = CGRect(x: 50, y: 150, width: 300, height: 30)
        update?.text  = "업데이트 여부 : \(rvc?.pUpdate == true ? "업데이트 함" : "업데이트 안함")"
        
        if let testUpdate = update
        {
            view.addSubview(testUpdate)
        }else
        {
            NSLog("update 변수는 nil 값입니다.")
        }
    }
    
    func setIntervalUI(interval : inout UILabel?, rvc : inout ReadViewController?, view : inout UIView)
    {
        guard interval != nil else {
            return NSLog("interval 인스턴스 생성 안됬다.")
        }
        interval?.frame = CGRect(x: 50, y: 200, width: 300, height: 30)
        interval?.text  = "업데이트 주기 : \(rvc?.pInterval)분마다"
        
        if let testInterval = interval
        {
            view.addSubview(testInterval)
        }
        else{
            NSLog("interval 변수 에러")
        }
    }
}

