//
//  AppDelegate.swift
//  Quackgram
//
//  Created by Cheng Zheng on 11/17/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit
import Parse

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        Parse.initialize(
            with: ParseClientConfiguration(block: { (configuration: ParseMutableClientConfiguration) -> Void in
                configuration.applicationId = "Quackgram"
                configuration.server = "https://shielded-fortress-53124.herokuapp.com/parse"
            })
        )
        
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
    
}

