//
//  CustomCell.swift
//  SwiftTest
//
//  Created by KKL on 2018/10/24.
//  Copyright © 2018年 KKL. All rights reserved.
//

import UIKit
import SnapKit
import Kingfisher

extension String {
    func stringHeightWidth(fontSize:CGFloat,width:CGFloat) -> CGFloat {
        let font = UIFont.systemFont(ofSize: fontSize)
        let size = CGSize(width: width, height: CGFloat(MAXFLOAT))
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineBreakMode = .byWordWrapping
        let attributes = [kCTFontAttributeName:font,kCTParagraphStyleAttributeName:paragraphStyle]
        let text = self as NSString
        let rect = text.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes as [NSAttributedStringKey : Any], context: nil)
        return rect.height
    }
}

class CustomCell: UITableViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView .addSubview(self.avart)
        self.contentView .addSubview(self.title)
        self.contentView .addSubview(self.content)
        self.contentView .addSubview(self.button)
    }
    
    
    // 给cell赋值
    func setModel(cellFrame:CellFrame)  {
         /// 添加约束
        self.avart.frame = cellFrame.avartF!
        self.title.frame = cellFrame.titleF!
        self.content.frame = cellFrame.contentF!
        self.button.frame = cellFrame.buttonF!
        
        self.title.text = cellFrame.hero?.title
        self.content.text = cellFrame.hero?.content
        
        let url = URL(string: (cellFrame.hero?.url)!)
        self.avart.kf.setImage(with: url)
    }

    // MARK:lazy --- load
    lazy var content:UILabel = {
        let content = UILabel()
        content.numberOfLines = 0
        content.textColor = UIColor.brown
        content.font = UIFont.systemFont(ofSize: 16)
        return content
    }()
    lazy var title:UILabel = {
        return UILabel()
    }()
    
    lazy var button:UIButton = {
        let  button =  UIButton()
        button.setImage(UIImage.init(named: "groupCopy"), for: UIControlState.normal)
        return button
    }()
    
    lazy var avart:UIImageView = {
        let avart = UIImageView()
        avart.layer.cornerRadius = 28
        avart.clipsToBounds = true
        avart.contentMode = UIViewContentMode.scaleAspectFill
        
        return avart
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


















