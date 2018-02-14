//
//  ShortcutParser.swift
//  RootControllerNavigation
//
//  Created by Mobdev125 on 2/14/18.
//  Copyright © 2018 Mobdev125. All rights reserved.
//

import UIKit

enum ShortcutKey: String {
    case activity = "com.mobdev.activity"
    case messages = "com.mobdev.messages"
}

class ShortcutParser {
    static let shared = ShortcutParser()
    private init() { }
    
    func registerShortcuts() {
        let activityIcon = UIApplicationShortcutIcon(templateImageName: "Alert Icon")
        let activityShortcutItem = UIApplicationShortcutItem(type: ShortcutKey.activity.rawValue, localizedTitle: "Recent Activity", localizedSubtitle: nil, icon: activityIcon, userInfo: nil)
        
        let messageIcon = UIApplicationShortcutIcon(templateImageName: "Messenger Icon")
        let messageShortcutItem = UIApplicationShortcutItem(type: ShortcutKey.messages.rawValue, localizedTitle: "Messages", localizedSubtitle: nil, icon: messageIcon, userInfo: nil)
        
        UIApplication.shared.shortcutItems = [activityShortcutItem, messageShortcutItem]
    }
    
    func handleShortcut(_ shortcut: UIApplicationShortcutItem) -> DeeplinkType? {
        switch shortcut.type {
        case ShortcutKey.activity.rawValue:
            return  .activity
        case ShortcutKey.messages.rawValue:
            return  .messages
        default:
            return nil
        }
    }
}
