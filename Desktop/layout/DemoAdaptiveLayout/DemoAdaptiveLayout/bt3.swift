//
//  bt3.swift
//  DemoAdaptiveLayout
//
//  Created by VietMinSK on 10/17/14.
//  Copyright (c) 2014 Techmaster Vietnam. All rights reserved.
//

import UIKit

class bt3: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        self.edgesForExtendedLayout = UIRectEdge.None
        
        // Khối xanh
        
        let blueRect = UIView()
        blueRect.backgroundColor = UIColor.blueColor()
        self.view.addSubview(blueRect)
        blueRect.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Khối cam
        
        let orangeRect = UIView()
        orangeRect.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(orangeRect)
        orangeRect.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Khối đỏ
        let redRect = UIView()
        redRect.backgroundColor = UIColor.redColor()
        self.view.addSubview(redRect)
        redRect.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        // Khối đen
        
        let blackRect = UIView()
        blackRect.backgroundColor = UIColor.blackColor()
        self.view.addSubview(blackRect)
        blackRect.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        
        
        let views = ["view": self.view, "blueRect": blueRect]
        let views2 = ["view": self.view, "orangeRect": orangeRect]
        let views3 = ["view": self.view, "redRect": redRect]
        let views4 = ["view": self.view, "blackRect": blackRect]
        let metric = ["Hspace": 20]
        //Khối xanh cách top 20 cao 150
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20.0-[blueRect(170)]", options: nil, metrics: nil, views: views))
        
        // Khối xanh cách left và right 20
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-Hspace-[blueRect]-Hspace-|", options: nil, metrics: metric, views: views))
        
        //CenterX blue
        self.view.addConstraint(NSLayoutConstraint(item: blueRect, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
        
        let blueOrange = ["blueRect": blueRect, "orangeRect": orangeRect]
        
        //CenterX orange
        self.view.addConstraint(NSLayoutConstraint(item: orangeRect, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
        
        //CenterX red
        
        self.view.addConstraint(NSLayoutConstraint(item: redRect, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
        
        //CenterX black
        
        self.view.addConstraint(NSLayoutConstraint(item: blackRect, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: self.view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0))
        
        // Khối xanh và khối cam
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[blueRect]-20-[orangeRect(77)]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["blueRect": blueRect, "orangeRect": orangeRect]))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-Hspace-[orangeRect]-Hspace-|", options: nil, metrics: metric, views: views2))
        
        // Khôi cam và khối đỏ
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[orangeRect]-20-[redRect(77)]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["orangeRect": orangeRect, "redRect": redRect]))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-Hspace-[redRect]-Hspace-|", options: nil, metrics: metric, views: views3))
        
        // Khối đỏ và khối đen
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[redRect]-20-[blackRect(77)]", options: NSLayoutFormatOptions.AlignAllLeading, metrics: nil, views: ["redRect": redRect, "blackRect": blackRect]))
        
        self.view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-Hspace-[blackRect]-Hspace-|", options: nil, metrics: metric, views: views4))
        
    }
    
}
