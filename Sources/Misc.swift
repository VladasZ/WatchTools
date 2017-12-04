//
//  Misc.swift
//  watchTest WatchKit Extension
//
//  Created by Vladas Zakrevskis on 11/29/17.
//  Copyright © 2017 Vladas Zakrevskis. All rights reserved.
//

import WatchKit
import SwiftyTools

public var rootController: WKInterfaceController {
    guard let controller = WKExtension.shared().rootInterfaceController
        else { Log.error(); return WKInterfaceController() }    
    return controller
}
