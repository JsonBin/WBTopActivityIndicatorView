//
//  ViewController.swift
//  WBTopActivityIndicatorView
//
//  Created by Zwb on 16/4/14.
//  Copyright © 2016年 zwb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.title="WBTopActivityIndicatorView"
        
        let button=UIButton.init(type: .Custom)
        button.center=self.view.center
        button.bounds=CGRectMake(0, 0, 100, 100)
        button.setTitle("加载", forState: .Normal)
        button.backgroundColor=UIColor.blackColor()
        button.addTarget(self, action: #selector(ViewController.btclick(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(button)
    }
    
    func btclick(sen:UIButton) -> Void {
        
        let activi=WBTopActivityIndicatorView()
        
        // 设置属性 （可不设置）
        activi.textstring="拼命加载"  // 文本
        activi.off_y=64  // y轴偏移量
        activi.bkColor=UIColor.yellowColor()  // 背景色
        activi.txtColor=UIColor.blueColor()  // 字体颜色
        
        activi.show()
        
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue()) {
            // 加载完成调用
            activi.hidde()
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

