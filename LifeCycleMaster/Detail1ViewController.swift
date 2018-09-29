//
//  Detail1ViewController.swift
//  LifeCycleMaster
//
//  Created by tlc on 2018/4/9.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class Detail1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    deinit {
        PrintLog(message: "被销毁")
    }
    
    // MARK: -
    @IBAction func backAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
