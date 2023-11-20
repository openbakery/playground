//
//  AppDelegate.swift
//  Playground
//
//  Created by René Pirringer on 20.11.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		window = UIWindow(frame: UIScreen.main.bounds)
		let viewController = ViewController()
		window!.rootViewController = UINavigationController(rootViewController:viewController)
		window!.makeKeyAndVisible()
		UIView.appearance().tintColor = .systemBlue
		return true
	}


}

