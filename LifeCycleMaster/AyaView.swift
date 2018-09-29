//
//  AyaView.swift
//  LifeCycleMaster
//
//  Created by tlc on 2018/4/9.
//  Copyright © 2018年 tlc. All rights reserved.
//

import UIKit

class AyaView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

    override func awakeFromNib() {
        super.awakeFromNib()
        
        PrintLog()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        PrintLog()
    }
    
    override func removeFromSuperview() {
        super.removeFromSuperview()
        
        PrintLog()
    }
    
    deinit {
        PrintLog()
    }
}
