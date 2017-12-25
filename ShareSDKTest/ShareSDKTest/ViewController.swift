//
//  ViewController.swift
//  ShareSDKTest
//
//  Created by zetafin on 2017/12/25.
//  Copyright © 2017年 赵宏亚. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func login(_ sender: UIButton) {
        
        ShareSDK.getUserInfo(.typeWechat) { (state: SSDKResponseState, user: SSDKUser?, error: Error?) in
            if let u = user {
                // 如果有相关信息
                print("user ************* \(u)")
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

