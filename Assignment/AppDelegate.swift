//
//  AppDelegate.swift
//  Assignment
//
//  Created by Muhammad Bilal on 21/05/2022.
//

import UIKit
import Reachability

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var reachability: Reachability?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        setRootViewController()
        return true
    }
    
    class func sharedAppDelegate() -> AppDelegate? {
            return UIApplication.shared.delegate as? AppDelegate
    }



}


extension AppDelegate {
    
    private func setRootViewController(){
        let vc = HomeCollectionViewController.init()
        let rootVC = UINavigationController.init(rootViewController: vc)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
    }
}
