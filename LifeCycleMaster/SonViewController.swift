//
//  SonViewController.swift
//  LifeCycleMaster
//
//  Created by tm on 2018/9/29.
//  Copyright © 2018 tlc. All rights reserved.
//

import UIKit

/// push跳转的子页面
class SonViewController: UIViewController {

    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "子页面"
        // 替换返回箭头图标
//        navigationController?.navigationItem.backBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "back_icon"), style: UIBarButtonItemStyle.done, target: self, action: #selector(SonViewController.backAction))
//        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.red], for: UIControlState.normal)
        PrintLog()
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        PrintLog()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        PrintLog()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        PrintLog()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        PrintLog()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        PrintLog()
    }
    
    deinit {
        PrintLog()
    }
    
    // MARK: - action
    @objc func backAction() {
        
    }
}
