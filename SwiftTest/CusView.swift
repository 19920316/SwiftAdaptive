//
//  CusView.swift
//  SwiftTest
//
//  Created by KKL on 2018/12/18.
//  Copyright © 2018年 KKL. All rights reserved.
//

import UIKit
import Foundation

public class CusView: UIView {

   public override init(frame: CGRect) {
        super.init(frame: frame)
        
       let label = UILabel()
        label.text = "易洋千玺最帅"
        label.textColor = UIColor.red
        label.font = UIFont.systemFont(ofSize: 30)
        label.frame = CGRect(x: 20, y: 20, width: 60, height: 30)
        self.addSubview(label)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
