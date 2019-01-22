//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

//import Kingfisher

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 80, width: 200, height: 20)
        label.text = "Hello World!"
        label.backgroundColor = UIColor.red
        label.textAlignment = NSTextAlignment.center
        label.font = UIFont.systemFont(ofSize: 25)
        label.textColor = UIColor.cyan
        view.addSubview(label)
        
        
//        let imageview = UIImageView()
//        let url = URL(string: "https://kkl-public.oss-cn-hangzhou.aliyuncs.com/homework/subjective-answer/167731f90ea9410/multi_image_20181203_1611.jpg")
//        imageview.kf.setImage(with: url)
//        view.addSubview(imageview)
//        imageview.frame = CGRect(x: 150, y: 120, width: 300, height: 70)
        self.view = view
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
