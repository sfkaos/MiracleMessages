//
//  AppDelegate.swift
//  MiracleMessages
//
//  Created by Win Raguini on 9/25/16.
//  Copyright © 2016 Win Inc. All rights reserved.
//

import UIKit
import AWSCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let cognitoAccountId = "xxxxxxxxxxxxxxxxx"
    let cognitoIdentityPoolId = "us-west-2:22d14ee0-7c0a-4ddc-b74d-24b09e62a5d6"
    let cognitoUnauthRoleArn = "xxxxxxxxxxxxxxxxx"
    let cognitoAuthRoleArn = "xxxxxxxxxxxxxxxxx"


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.


//        let credentialsProvider = AWSCognitoCredentialsProvider.init(regionType: AWSRegionType.usWest2, identityPoolId: cognitoIdentityPoolId, unauthRoleArn: cognitoUnauthRoleArn, authRoleArn: cognitoAuthRoleArn, identityProviderManager: nil)
//        let defaultServiceConfiguration = AWSServiceConfiguration(
//            region: AWSRegionType.usWest2,
//            credentialsProvider: credentialsProvider)
////        AWSServiceManager.defaultServiceManager().setDefaultServiceConfiguration(defaultServiceConfiguration)
//
//        AWSServiceManager.default


        let credentialsProvider = AWSCognitoCredentialsProvider(regionType: AWSRegionType.usWest2, identityPoolId: cognitoIdentityPoolId)
        let configuration = AWSServiceConfiguration(region: AWSRegionType.usWest2, credentialsProvider: credentialsProvider)
        AWSServiceManager.default().defaultServiceConfiguration = configuration

        let pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.lightGray
        pageControl.currentPageIndicatorTintColor = UIColor.black
        pageControl.backgroundColor = UIColor.red

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

