//
//  CellFrame.swift
//  SwiftTest
//
//  Created by KKL on 2018/10/26.
//  Copyright © 2018年 KKL. All rights reserved.
//

import UIKit


class CellFrame: NSObject {
    var hero:Hero? ///model
    
    var avartF:CGRect?//图像frame
    var titleF:CGRect? //标题frame
    var contentF:CGRect?//内容frame
    var buttonF:CGRect? // 按钮frame
    var cellH:CGFloat?
    
    func setMModel(hero:Hero,index:NSInteger)  {
        self.hero = hero
        let avartX:CGFloat = 10
        let avartY:CGFloat = avartX
        let avartW:CGFloat = 56
        let avartH:CGFloat = 56
        self.avartF = CGRect(x:avartX,y:avartY,width:avartW,height:avartH)
        //
        let titleX:CGFloat = 10 + (self.avartF?.maxX)!
        let titleY:CGFloat = (self.avartF?.midY)! - 15/2
        let titleW:CGFloat = UIScreen.main.bounds.width - avartX*2
        let titleH:CGFloat = 15
        self.titleF = CGRect(x: titleX, y: titleY, width: titleW, height: titleH)
        ///
        let contentX:CGFloat = avartX
        let contentY:CGFloat = (self.avartF?.maxY)! + 10
        let contentW:CGFloat = titleW
        let contentH:CGFloat = (hero.content?.stringHeightWidth(fontSize: 16, width: contentW))!
        self.contentF = CGRect(x: contentX, y: contentY, width: contentW, height: contentH)
        //
        let buttonX:CGFloat = avartX
        let buttonY:CGFloat = (self.contentF?.maxY)! + 10
        let buttonW:CGFloat = (UIImage (named: "groupCopy")?.size.width)!
        let buttonH:CGFloat = (UIImage (named: "groupCopy")?.size.height)!
        self.buttonF = CGRect(x: buttonX, y: buttonY, width: buttonW, height: buttonH)
        //
        self.cellH = (self.buttonF?.maxY)! + 10
                                
    }
    
    
}

