//
//  BootLogic.swift
//  TechmasterSwiftApp
//
//  Created by Adam on 9/8/14.
//  Copyright (c) 2014 Adam. All rights reserved.
//  Techmaster Vietnam

import UIKit
let SECTION = "section"
let MENU = "menu"
let TITLE = "title"
let CLASS = "class"
class BootLogic: NSObject {
    
    var menu : NSArray?
    class func boot(window:UIWindow){
        let mainScreen = MainScreen(style: UITableViewStyle.Grouped)
        
        var basic = [SECTION: "Autolayout by UI",MENU:[
            [TITLE: "Center a view",CLASS: "CenterView"],
            [TITLE: "Margin",CLASS: "CenterMarginView"],
            [TITLE: "Margin with other objects",CLASS: "MarginWithOther"],
            
          ]
        ]
        
        var code = [SECTION: "Autolayout programmatically",MENU:[
            [TITLE: "CenterX a view",CLASS: "CenterX"],
            [TITLE: "CenterX-Y a view",CLASS: "CenterAll"],
            [TITLE: "Two view equal width",CLASS: "EqualWidth"],
            [TITLE: "Demo metrics",CLASS: "DemoMetrics"],
            [TITLE: "Demo options",CLASS: "DemoOptions"],
            [TITLE: "Multipler constraint",CLASS: "DemoMultipler"],
            [TITLE: "Four Squares",CLASS: "FourSquares"],
            [TITLE: "Update constraint on rotation",CLASS: "UpdateConstrainOnRotation"],
            [TITLE: "IntrinsicContentSize",CLASS: "DemoIntrinsicContentSize"],
            [TITLE: "DemoCenter",CLASS: "DemoCenter"],
            [TITLE: "TwinObj",CLASS: "TwinObj"],
            [TITLE: "AboutUnder",CLASS: "AboutUnder"],
            [TITLE: "bt1layout",CLASS: "bt1layout"],
            [TITLE: "bt2layout",CLASS: "bt2layout"],
            [TITLE: "bt3",CLASS: "bt3"]
            ]
        ]
       
        
        mainScreen!.menu = [basic, code]
        mainScreen!.title = "Adaptive Layout Demo"
        mainScreen!.about = "Đây là ứng dụng minh hoạ Adaptive Layout trên iOS 8.0"
        
        let nav = UINavigationController(rootViewController: mainScreen!)
        
        window.rootViewController = nav        
      
    }   
}
