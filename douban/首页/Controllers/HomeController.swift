//
//  HomeController.swift
//  豆瓣
//
//  Created by 梁航铭 on 2020/7/26.
//  Copyright © 2020 梁航铭. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 隐藏导航条
        navigationController?.navigationBar.isHidden = true
        
        // 自定义导航条
        let titleView = HMNavSearchView.loadFromNib()
        titleView.frame = CGRect(x: 0, y: 44, width: YYScreenWidth, height: 40)
        view.addSubview(titleView)
        
        // 修改状态栏背景颜色
        let frame: CGRect = UIApplication.shared.windows.last?.windowScene?.statusBarManager?.statusBarFrame ??
            CGRect(x: 0, y: 0, width: 0, height: 0)
        let statusBar : UIView = UIView(frame: frame)
        statusBar.backgroundColor = UIColor.init(r: 86, g: 185, b: 83)
        UIApplication.shared.windows.last?.addSubview(statusBar)
        
        // 加载下方pageview
        let style = HMPageStyle()
        style.isTitleScrollEnable = false
        style.isShowBottomLine = true
        style.titleSelectedColor = globalColor
        style.titleColor = UIColor.gray
        style.bottomLineColor = globalColor
        style.bottomLineHeight = 3
        style.titleWidth = 100
        style.isShowSeparationLine = true
    
            
        let titles = ["动态", "推荐"]
        let viewControllers:[UIViewController] = [HMGoLoginController(), HMGoLoginController()]
        for vc in viewControllers{
            addChild(vc)
        }
        let pageView = HMPageView(frame: CGRect(x: 0, y: 84, width: YYScreenWidth, height: YYScreenHeigth-84), style: style, titles: titles, childViewControllers: viewControllers)
        view.addSubview(pageView)
    
    }
}
