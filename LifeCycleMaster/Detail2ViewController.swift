//
//  Detail2ViewController.swift
//  LifeCycleMaster
//
//  Created by tlc on 2018/4/9.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class Detail2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    deinit {
        PrintLog(message: "被销毁")
    }
    
    // MARK: - 

    @IBAction func backAction(_ sender: Any) {
        var vc = self.presentingViewController
        while let zvc = vc, !zvc.isKind(of: UITabBarController.self) {
            vc = zvc.presentingViewController
        }
        vc?.dismiss(animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
