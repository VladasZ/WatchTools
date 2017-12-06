//
//  Alert.swift
//  watchTest WatchKit Extension
//
//  Created by Vladas Zakrevskis on 11/29/17.
//  Copyright © 2017 Vladas Zakrevskis. All rights reserved.
//

import WatchKit

public class Alert {
    
    public static func show(_ message: String) {
        let action = WKAlertAction(title: "OK", style: .default, handler: { })
        rootController.presentAlert(withTitle: message, message: nil, preferredStyle: .alert, actions: [action])
    }
}

