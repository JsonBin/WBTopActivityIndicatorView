# WBTopActivityIndicatorView
Swift 自定义的顶部 小菊花加载器

使用方法
========

        // 初始化
        let activi=WBTopActivityIndicatorView()
        // 设置属性 （可不设置）
        activi.textstring="拼命加载"  // 文本
        activi.off_y=64  // y轴偏移量
        activi.bkColor=UIColor.yellowColor()  // 背景色
        activi.txtColor=UIColor.blueColor()  // 字体颜色
        // 显示
        activi.show()
        
        // 结束时调用
        activi.hidde()
        
效果图
=======

 ![gif](https://github.com/JsonBin/WBTopActivityIndicatorView/raw/master/activity.gif  "顶部小菊花")
