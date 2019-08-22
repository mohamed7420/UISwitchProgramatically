//
//  ViewController.swift
//  UISwitchProgramatically
//
//  Created by Mohamed on 8/22/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit
import TinyConstraints

class ViewController: UIViewController {

    lazy var CustomSwitch: UISwitch = {
       
        let CustomSwitch = UISwitch()
        
        CustomSwitch.tintColor = .red
        CustomSwitch.onTintColor = .black
        CustomSwitch.thumbTintColor = .blue
        CustomSwitch.addTarget(self, action: #selector(handleSwitch(sender:)), for: .valueChanged)
        
        return CustomSwitch
        
    }()
    
    
    @objc func handleSwitch(sender : UISwitch){
        
        if sender.isOn == true {
            
            print("on")
            
        }else{
            
            
            print("off")
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .orange
        
        view.addSubview(CustomSwitch)
        
        CustomSwitch.centerInSuperview()


    }


}

