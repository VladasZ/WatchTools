//
//  Misc.swift
//  watchTest WatchKit Extension
//
//  Created by Vladas Zakrevskis on 11/29/17.
//  Copyright © 2017 Vladas Zakrevskis. All rights reserved.
//

import WatchKit
import SwiftyTools

<<<<<<< HEAD
public var rootController: WKInterfaceController {
    guard let controller = WKExtension.shared().rootInterfaceController
        else { Log.error(); return WKInterfaceController() }    
    return controller
=======
public func onMain(_ action: @escaping () -> ()) {
    DispatchQueue.main.async(execute: action)
}

public func after(_ delay: Double, action: @escaping () -> ()) {
    let when = DispatchTime.now() + delay
    DispatchQueue.main.asyncAfter(deadline: when, execute: action)
}

@inline(__always)
public func random() -> Int {
    return Int(UInt32(arc4random()))
}

@inline(__always)
public func random(_ uniform:Int) -> Int {
    return Int(UInt32(arc4random_uniform(UInt32(uniform))))
}

@inline(__always)
public func randomBool() -> Bool {
    return UInt32(arc4random()) % UInt32(2) == 0
}

//https://stackoverflow.com/questions/24007461/how-to-enumerate-an-enum-with-string-type
public func iterateEnum<T: Hashable>(_: T.Type) -> AnyIterator<T> {
    var i = 0
    return AnyIterator {
        let next = withUnsafeBytes(of: &i) { $0.load(as: T.self) }
        if next.hashValue != i { return nil }
        i += 1
        return next
    }
>>>>>>> b85609552a06b4d214dd528a36e6605d91e521dd
}
