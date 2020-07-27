//
//  TabbarController.swift
//  豆瓣
//
//  Created by 梁航铭 on 2020/7/26.
//  Copyright © 2020 梁航铭. All rights reserved.
//

import UIKit

class HMTabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setValue(HMTabBar(), forKey: "tabBar")
    
        setupUI()
    }
    
    func setupUI(){
         addChildViewController(childVc: HomeController(), title: "首页", img: "ic_tab_home", selImg: "ic_tab_home_selected")
         
         addChildViewController(childVc: SubjectsController(), title: "书影音", img: "ic_tab_subjects", selImg: "ic_tab_subjects_selected")
         
         addChildViewController(childVc: GroupController(), title: "小组", img: "ic_tab_group_gray", selImg: "ic_tab_groups_selected")
         
         addChildViewController(childVc: MarketController(), title: "市集", img: "ic_tab_market_off", selImg: "ic_tab_market_selected")
         
         addChildViewController(childVc: MineController(), title: "我的", img: "ic_tab_male", selImg: "ic_tab_male_selected")
     }
     
     func addChildViewController(childVc: UIViewController, title: String, img: String, selImg: String){
        childVc.tabBarItem.title = title
        childVc.tabBarItem.image = UIImage(named: img)
        childVc.tabBarItem.selectedImage = UIImage(named: selImg)
        addChild(HMNavigationController(rootViewController: childVc))
     }
    
}
