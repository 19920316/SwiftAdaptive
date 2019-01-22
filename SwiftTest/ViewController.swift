//
//  ViewController.swift
//  SwiftTest
//
//  Created by KKL on 2018/10/23.
//  Copyright © 2018年 KKL. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let btnStartTag = 1000 //自定义btn的tag起始值
    var heroArray : [CellFrame]?
    
    /// 初始化tableivew
    let table:UITableView = UITableView(frame: CGRect(x:0,y:0,width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height), style: UITableViewStyle.plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //   let dstPath = path ?? NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first!
//        return (dstPath as NSString).appendingPathComponent(cacheName)
        
         let path = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true).first!
         print(path)
        
        
        
        
        
        self.heroArray = []
        self.view .addSubview(table)
        table.delegate = self
        table.dataSource = self
        table.estimatedRowHeight = 130
        table.rowHeight = UITableViewAutomaticDimension
        // 注册cell
        table .register(CustomCell.self, forCellReuseIdentifier: "register")
        
        for i in 0 ..< 18 {
            let hero = Hero()
            let cellFrame = CellFrame()
            
            hero.url = "https://kkl-public.oss-cn-hangzhou.aliyuncs.com/homework/subjective-answer/167731f90ea9410/multi_image_20181203_1611.jpg"
            hero.title = "易洋千玺最帅" + String(format: "%d", i)
            hero.content = "易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅" + String(format: "%d", i)
            if (i == 1 || i == 3 || i == 5 || i == 9 || i == 12 || i == 17) {
                hero.content = "哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅易洋千玺最帅哈哈哈红红火火哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈哈"
            }
            hero.buttonTitle = "易洋千玺无敌无敌无敌无敌无敌无敌" + String(format: "%d", i)
            cellFrame.setMModel(hero: hero, index: i)
            self.heroArray?.append(cellFrame)
        }
        
       self.table.reloadData()
    }

//
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (heroArray?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomCell = tableView .dequeueReusableCell(withIdentifier: "register", for: indexPath) as! CustomCell
        cell.setModel(cellFrame: self.heroArray![indexPath.row])
        cell.title.text = "易洋千玺最好看 哈哈哈"
        return cell
        
    }
    
    // tableviewcell的高度方法
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellFrame:CellFrame = self.heroArray![indexPath.row]
        return cellFrame.cellH!
        
    }
    // 禁止cell被点击选中
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
    
    // MARK:下载按钮点击事件
//    func btnClick(sender:UIButton?) ->  {
//        print("btn Click \(sender.tag)")
//    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}








































