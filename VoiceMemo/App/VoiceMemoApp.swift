//
//  VoiceMemoApp.swift
//  VoiceMemo
//
//  Created by 영현 on 4/25/24.
//

import SwiftUI

@main
struct VoiceMemoApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            OnboardingView()
        }
    }
}
