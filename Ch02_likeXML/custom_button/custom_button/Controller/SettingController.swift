//
//  SettingController.swift
//  custom_button
//
//  Created by 양승현 on 2022/06/11.
//

import UIKit


class SettingController : UIViewController{
    var contents : SettingContentDTO?
    override func viewDidLoad() {
        contents = SettingContentDTO(view: &self.view)
        setNavigationTitle()
        self.storyboard?.instantiateViewController(identifier: "SettingController")
        //액션 메서드
        self.contents?.updateSwitch.addTarget(self, action: #selector(presentUpdateValue(_:)), for: .valueChanged)
        self.contents?.weekStepper.addTarget(self, action: #selector(presentIntervalValue(_:)), for: .valueChanged)
        
        
        //한번 addSubView로만 추가해봤어
        self.view.addSubview({
            var transScene : UIButton = {
                var transScene = UIButton()
                transScene.frame = CGRect(x: self.view.frame.width/2, y: 250, width: 150, height: 50)
                transScene.setTitle("다른 화면", for: .normal)
                transScene.backgroundColor = UIColor.orange
                return transScene
            }()
            transScene.addTarget(self, action: #selector(presentViewController(_:)), for: .touchDown)
            return transScene
        }())
    }
}

//MARK: - event Handler
extension SettingController {
    @objc
    func presentUpdateValue(_ sender : UISwitch)
    {
        self.contents?.updateValue.text = (sender.isOn == true ? "갱신함" : "갱신하지 않음")
    }
    
    @objc
    func presentIntervalValue(_ sender : UIStepper)
    {
        self.contents?.weekValue.text = ("\(Int(sender.value))분 마다")
    }
    @objc
    func presentViewController(_ sender: UIButton)
    {
        if let SController = self.storyboard?.instantiateViewController(withIdentifier: "ViewController")
        {
            self.navigationController?.pushViewController(SController, animated: true)
        }
    }
}

//MARK: - add contents func
extension SettingController {
    
}

//MARK: - design contents
extension SettingController{
    func setNavigationTitle()
    {
        self.navigationItem.title = "설정"
    }
}
