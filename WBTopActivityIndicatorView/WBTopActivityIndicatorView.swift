//
//  WBTopActivityIndicatorView.swift
//  WBTopActivityIndicatorView
//
//  Created by Zwb on 16/4/14.
//  Copyright © 2016年 zwb. All rights reserved.
//

import UIKit

class WBTopActivityIndicatorView: UIView {

    internal var textstring:NSString? // 设置文本(默认 正在加载.. )
    internal var off_y:CGFloat?  // y轴偏移量(默认30)
    internal var bkColor:UIColor?  // 背景颜色(默认绿色)
    internal var txtColor:UIColor? // 文字颜色(默认红色)
    
    private var win:UIWindow?
    
    internal func show()->Void{
        initUserInterface()
        UIView.animateWithDuration(0.5) {
            self.frame=CGRectMake(self.frame.origin.x, 0, self.bounds.size.width, self.bounds.size.height)
        }
    }
    
    internal func hidde()->Void{
        UIView.animateWithDuration(0.5, animations: {
                let y = self.off_y==nil ? 30 : self.off_y
                self.frame=CGRectMake(self.frame.origin.x, -y!, self.bounds.size.width, self.bounds.size.height)
            }) { (flag) in
               self.removeFromSuperview()
        }
    }
    
    private func initUserInterface()->Void{
        win=UIApplication.sharedApplication().keyWindow
        self.backgroundColor = bkColor==nil ? UIColor.greenColor() : bkColor
        let y = off_y==nil ? 30 : off_y
        self.frame=CGRectMake(0, -y!, win!.bounds.size.width, 30)
        win!.addSubview(self)
        
        let activity=UIActivityIndicatorView()
        activity.activityIndicatorViewStyle = .Gray
        activity.frame=CGRectMake(self.bounds.size.width/4, 5, 20, 20)
        activity.startAnimating()
        self.addSubview(activity)
        
        let label=UILabel()
        label.frame=CGRectMake(self.bounds.size.width/4+30, 5, self.bounds.size.width-50, 20)
        label.textAlignment = .Left
        label.text = textstring==nil ? "正在加载.." : textstring as? String
        label.textColor=txtColor==nil ? UIColor.redColor() : txtColor
        label.font=UIFont.systemFontOfSize(15)
        self.addSubview(label)
    }

}
