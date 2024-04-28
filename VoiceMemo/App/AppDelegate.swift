//
//  AppDelegate.swift
//  VoiceMemo
//
//  Created by 영현 on 4/28/24.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    var notificationDelegate = NotificationDelegate()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UNUserNotificationCenter.current().delegate = notificationDelegate
        return true
    }
}
