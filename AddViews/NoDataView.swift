//
//  NoDataView.swift
//  Loqqat
//
//  Created by Qaptive Technologies on 03/04/19.
//  Copyright © 2019 Qaptive_Technologies. All rights reserved.
//

import UIKit

class NoDataView: NSObject {
    
    static func added(_ main: UIView) {
        
        if main.viewWithTag(50) == nil {
            let noDataView = UIView(frame: CGRect(x: 0, y: 0, width: main.bounds.width, height: main.bounds.height))
            noDataView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
            noDataView.tag = 50
            let imageView = UIImageView()
            noDataView.addSubview(imageView)
            imageView.image = #imageLiteral(resourceName: "NoData")
            imageView.contentMode = .scaleAspectFit
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            let horizontalConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: noDataView, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
            let verticalConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: noDataView, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
            let widthConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
            let heightConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
            noDataView.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
            
            let noDataLB = UILabel()
            noDataView.addSubview(noDataLB)
            noDataLB.text = "No Data Found"
            noDataLB.font = UIFont.systemFont(ofSize: 15, weight: .medium)
            noDataLB.textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
            noDataLB.translatesAutoresizingMaskIntoConstraints = false
            let labelhorizontalConstraint = NSLayoutConstraint(item: noDataLB, attribute: .centerX, relatedBy: .equal, toItem: imageView, attribute: .centerX, multiplier: 1, constant: 0)
            
            let lableVerticalConstraint = NSLayoutConstraint(item: noDataLB, attribute: .bottom, relatedBy: .equal, toItem: imageView, attribute: .bottom, multiplier: 1, constant: 20)
            
//            let widthConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
//            let heightConstraint = NSLayoutConstraint(item: imageView, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 50)
            noDataView.addConstraints([labelhorizontalConstraint, lableVerticalConstraint])
            
            main.addSubview(noDataView)
        }
        
    }
    
    static func remove(_ main: UIView) {
        if let tagView = main.viewWithTag(50) {
            tagView.removeFromSuperview()
        }
    }
    
}
