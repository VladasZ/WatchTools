//
//  Geometry.swift
//  WatchTools
//
//  Created by Vladas Zakrevskis on 12/4/17.
//  Copyright © 2017 Vladas Zakrevskis. All rights reserved.
//

import UIKit

public extension CGRect {
    
    var center: CGPoint {
        return CGPoint(origin.x + size.width / 2, origin.y + size.height / 2)
    }
    
    init(_ x: CGFloat, _ y: CGFloat, _ width: CGFloat, _ height: CGFloat) {
        self.init(x: x, y: y, width: width, height: height)
    }
    
    init(center: CGPoint, width: CGFloat, height: CGFloat) {
        self.init(center.x - width / 2, center.y - height / 2, width, height)
    }
}

public extension CGSize {
    init(_ width: CGFloat, _ height: CGFloat) { self.init(width: width, height: height) }
}

public extension CGPoint {
    
    init(_ x: CGFloat, _ y: CGFloat) { self.init(x: x, y: y) }
    
    static func onCircleWith(radius: CGFloat, angle: CGFloat, center: CGPoint) -> CGPoint {
        return CGPoint(radius * cos(angle) + center.x, radius * sin(angle) + center.y)
    }
    
    func midPointWith(_ point: CGPoint) -> CGPoint {
        return CGPoint((x + point.x) / 2, (y + point.y) / 2)
    }
}

