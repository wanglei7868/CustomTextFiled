//
//  AppDelegate.swift
//  CustomTextFiledDemo
//
//  Created by jykj on 2020/5/11.
//  Copyright © 2020 wanglei. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
 var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = ViewController.init()
        window?.backgroundColor = UIColor.white
        window?.makeKeyAndVisible()
        return true
    }
}

