//
//  AppDelegate.swift
//  AppLifeCycle
//
//  Created by Tife on 2020/08/11.
//  Copyright © 2020 Tife. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
//    iOS 13 미만의 대상
//    1. iOS13에서 새로 생긴 SceneDelegate.swift 파일 삭제
//    2. iOS13에서 AppDelegate에 추가된 UISceneSession과 관련된 두 메소드 삭제
//    3. iOS13에서 SceneDelegate로 옮겨진 window 프로퍼티를 AppDelegate로 다시 옮기기
//       var window: UIWindow?
//    4. info.plist에서 Scene과 관련된 Manifest인 Application Scene Manifest 삭제
    
    var window: UIWindow?
    
//    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        print("willFinishLaunchingWithOptions")
//        return true
//    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("didFinishLaunchingWithOptions")
        return true
        // 앱이 처음 활성화때 호출
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        print("applicationDidBecomeActive")
        // 매 활성화시 호출
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        print("applicationWillResignActive")
        // 앱이 active에서 inactive로 전환될 때 호출
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("applicationWillResignActive")
        // 앱이 background 상태일 때 호출
        // 실행중이던 앱의 데이터를 릴리즈.
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        print("applicationWillEnterForeground")
        // 앱이 background에서 foreground로 전환될 때 호출
        // 릴리즈 되어있던 데이터를 불러옴.
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print("applicationWillTerminate")
        // 앱이 종료될 때 호출
        // 잘 호출되지 않는 편이라 사용하지 않는 편.
        // Background로 대용
    }
    
    // iOS 13 부터 27~54 UILifeCycle에 대한 부분을 SceneDelegate로 대체 하여 사용.
    // 그로인해 AppDelegate에 아래 SecenSession Lifecyle 역할이 추가되었음.
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }


}

